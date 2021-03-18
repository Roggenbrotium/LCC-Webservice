package com.liland.lcc.ws;

import com.liland.lcc.dto.InstanceType;
import com.liland.lcc.dto.Roles;
import com.liland.lcc.dto.SystemStatus;
import org.hibernate.engine.jdbc.BlobProxy;
import org.json.JSONObject;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.transaction.Transactional;
import java.nio.charset.StandardCharsets;
import java.security.*;
import java.sql.Blob;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Base64;
import java.util.UUID;

import static java.nio.charset.StandardCharsets.UTF_8;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@Transactional
class WebserviceApplicationTests{
	
	private MockMvc mockMvc;
	
	@Autowired
	private DataRepository dataRepository;
	
	@Autowired
	private TenantRepository tenantRepository;
	
	@BeforeEach
	public void init() {
		this.mockMvc = MockMvcBuilders.standaloneSetup(new WebserviceController(dataRepository, tenantRepository)).build();
	}
	
	public static KeyPair keyGen() throws NoSuchAlgorithmException{
		KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
		keyPairGenerator.initialize(4096);
		
		return keyPairGenerator.generateKeyPair();
	}
	
	public static String uuidGen(){
		return UUID.randomUUID().toString();
	}
	
	public static byte[] sign(String message, PrivateKey privateKey){
		try{
			byte[] byteMsg = message.getBytes(UTF_8);
			
			MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
			byte[] hashMsg = messageDigest.digest(byteMsg);
			
			Cipher cipher = Cipher.getInstance("RSA");
			cipher.init(Cipher.ENCRYPT_MODE, privateKey);
			return cipher.doFinal(hashMsg);
		}catch(NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException |
				BadPaddingException | IllegalBlockSizeException e){
			System.out.println(Arrays.toString(e.getStackTrace()));
			return null;
		}
	}
	
	public void createAdmin(String uuid, Key publicKey){
		UserDataDB userDataDB = new UserDataDB();
		userDataDB.setUuid(uuid);
		
		userDataDB.setInstancetype(InstanceType.IGOV_APP);
		userDataDB.setVersion("5.0.177");
		userDataDB.setStatus(SystemStatus.ADOPTED);
		
		String pkey = Base64.getEncoder().encodeToString(publicKey.getEncoded());
		byte[] bytes = pkey.getBytes(StandardCharsets.UTF_8);
		Blob blob = BlobProxy.generateProxy(bytes);
		userDataDB.setPublickey(blob);
		userDataDB.setIpaddress("127.0.0.1");
		userDataDB.setRole(Roles.ROLE_ADMIN);
		
		dataRepository.save(userDataDB);
	}
	
	@Test
	public void systemAddTest() throws Exception{
		String uuid = uuidGen();
		KeyPair keyPair = keyGen();
		
		String jsonInputString = new JSONObject()
				.put("uuid", uuid)
				.put("publickey", Base64.getEncoder().encodeToString(keyPair.getPublic().getEncoded()))
				.put("instancetype", "IGOV_APP")
				.put("version", "5.0.177")
				.toString();
		
		this.mockMvc.perform(post("/registry/add")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		String uuidAdmin = uuidGen();
		KeyPair keyPairAdmin = keyGen();
		createAdmin(uuidAdmin, keyPairAdmin.getPublic());
		
		String message = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));
		byte[] signature = sign(message, keyPairAdmin.getPrivate());
		jsonInputString = new JSONObject()
				.put("uuid", uuidAdmin)
				.put("signature", Base64.getEncoder().encodeToString(signature))
				.put("msg", message)
				.toString();
		
		this.mockMvc.perform(post("/registry/login")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		jsonInputString = new JSONObject()
				.put("filter", new JSONObject())
				.toString();
		
		ResultActions resultActions = this.mockMvc.perform(post("/registry/list")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		MvcResult result = resultActions.andReturn();
		String contentAsString = result.getResponse().getContentAsString();
		assertTrue(contentAsString.contains(uuid));
	}
	
	
	//Custom Querys don't work for some reason
	@Test
	public void systemAdoptTest() throws Exception{
		String uuid = uuidGen();
		KeyPair keyPair = keyGen();
		
		String jsonInputString = new JSONObject()
				.put("uuid", uuid)
				.put("publickey", Base64.getEncoder().encodeToString(keyPair.getPublic().getEncoded()))
				.put("instancetype", "IGOV_APP")
				.put("version", "5.0.177")
				.toString();
		
		this.mockMvc.perform(post("/registry/add")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		String uuidAdmin = uuidGen();
		KeyPair keyPairAdmin = keyGen();
		createAdmin(uuidAdmin, keyPairAdmin.getPublic());
		
		String message = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));
		byte[] signature = sign(message, keyPairAdmin.getPrivate());
		jsonInputString = new JSONObject()
				.put("uuid", uuidAdmin)
				.put("signature", Base64.getEncoder().encodeToString(signature))
				.put("msg", message)
				.toString();
		
		ResultActions resultActions = this.mockMvc.perform(post("/registry/login")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		MvcResult result = resultActions.andReturn();
		String contentAsString = result.getResponse().getHeader("Authorization");
		
		jsonInputString = new JSONObject()
				.put("uuid", uuid)
				.put("adopt", true)
				.toString();
		
		resultActions = this.mockMvc.perform(post("/registry/adopt")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON)
				.header("Authorization", contentAsString))
				.andExpect(status().isOk());
		
		result = resultActions.andReturn();
		contentAsString = result.getResponse().getContentAsString();
		System.out.println(contentAsString);
		
		jsonInputString = new JSONObject()
				.put("filter", new JSONObject())
				.toString();
		
		resultActions = this.mockMvc.perform(post("/registry/list")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		result = resultActions.andReturn();
		contentAsString = result.getResponse().getContentAsString();
		System.out.println(contentAsString);
		assertTrue(contentAsString.contains(SystemStatus.ADOPTED.toString()));
	}
	
	@Test
	public void systemUpdateTest() throws Exception{
		String uuid = uuidGen();
		KeyPair keyPair = keyGen();
		
		String jsonInputString = new JSONObject()
				.put("uuid", uuid)
				.put("publickey", Base64.getEncoder().encodeToString(keyPair.getPublic().getEncoded()))
				.put("instancetype", "IGOV_APP")
				.put("version", "5.0.177")
				.toString();
		
		this.mockMvc.perform(post("/registry/add")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		String uuidAdmin = uuidGen();
		KeyPair keyPairAdmin = keyGen();
		createAdmin(uuidAdmin, keyPairAdmin.getPublic());
		
		String message = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));
		byte[] signature = sign(message, keyPairAdmin.getPrivate());
		jsonInputString = new JSONObject()
				.put("uuid", uuidAdmin)
				.put("signature", Base64.getEncoder().encodeToString(signature))
				.put("msg", message)
				.toString();
		
		this.mockMvc.perform(post("/registry/login")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		jsonInputString = new JSONObject()
				.put("uuid", uuid)
				.put("adopt", true)
				.toString();
		
		this.mockMvc.perform(post("/registry/adopt")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		message = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));
		signature = sign(message, keyPair.getPrivate());
		jsonInputString = new JSONObject()
				.put("uuid", uuid)
				.put("signature", Base64.getEncoder().encodeToString(signature))
				.put("msg", message)
				.toString();
		
		ResultActions resultActions = this.mockMvc.perform(post("/registry/login")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON)
				.accept(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		MvcResult result = resultActions.andReturn();
		String contentAsString = result.getResponse().getHeader("Authorization");
		System.out.println(contentAsString);
		
		jsonInputString = new JSONObject()
				.put("version", "1.2.3")
				.toString();
		
		this.mockMvc.perform(post("/registry/update")
				.content(jsonInputString)
				.header("Authorization", contentAsString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		message = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));
		signature = sign(message, keyPairAdmin.getPrivate());
		jsonInputString = new JSONObject()
				.put("uuid", uuidAdmin)
				.put("signature", Base64.getEncoder().encodeToString(signature))
				.put("msg", message)
				.toString();
		
		this.mockMvc.perform(post("/registry/login")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		jsonInputString = new JSONObject()
				.put("filter", new JSONObject())
				.toString();
		
		resultActions = this.mockMvc.perform(post("/registry/list")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		result = resultActions.andReturn();
		contentAsString = result.getResponse().getContentAsString();
		assertTrue(contentAsString.contains("1.2.3"));
	}
}
