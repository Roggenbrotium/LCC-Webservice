package com.liland.lcc.ws;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONObject;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
class WebserviceApplicationTests{

	//Is still null after initialization
	private MockMvc mockMvc;
	
	@Mock
	private DataRepository dataRepository;
	
	@Mock
	private TenantRepository tenantRepository;
	
	@Autowired
	private ObjectMapper objectMapper;
	
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
	
	@Test
	public void systemAddTest() throws Exception{
		String uuid = uuidGen();
		KeyPair keyPair = keyGen();
		
		String jsonInputString = new JSONObject()
				.put("uuid", uuid)
				.put("publickey", keyPair.getPublic())
				.put("instancetype", "IGOV_APP")
				.put("version", "5.0.177")
				.toString();
		
		ResultActions resultActions = this.mockMvc.perform(post("/registry/add")
				.content(jsonInputString)
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk());
		
		MvcResult result = resultActions.andReturn();
		String contentAsString = result.getResponse().getContentAsString();
		assertTrue(contentAsString.contains("OK"));
	}
}
