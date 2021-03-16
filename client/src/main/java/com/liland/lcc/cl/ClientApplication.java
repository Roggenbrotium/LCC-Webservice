package com.liland.lcc.cl;

import org.json.JSONException;
import org.json.JSONObject;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.Base64;
import java.util.UUID;

import static java.nio.charset.StandardCharsets.UTF_8;

public class ClientApplication {

    public static HttpURLConnection con;
    public static String token;

    public static void main(String[] args) throws IOException, NoSuchAlgorithmException, JSONException{
        KeyPair keyPair = keyGen();
        String uuid = uuidGen();

        switch (args[0]) {
            case "register":
                systemAdd(args, keyPair, uuid);
                break;
            case "login":
                systemLogin(keyPair, uuid);
                break;
            default:
                System.out.println("Error");
                break;
        }
    }
    
    /**
     * Signs a message with the given private key.
     */
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
    
    /**
     * Generates a random uuid.
     */
    public static String uuidGen(){
        return UUID.randomUUID().toString();
    }
    
    /**
     * Generates a new keypair.
     */
    public static KeyPair keyGen() throws NoSuchAlgorithmException{
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(4096);
        
        return keyPairGenerator.generateKeyPair();
    }
    
    /**
     * Sends a request and receives a response.
     * Returns the response as a String.
     */
    public static String httpHandler(String httpBody) throws IOException{
        OutputStream outputStream = con.getOutputStream();
        byte[] body = httpBody.getBytes(UTF_8);
        outputStream.write(body, 0, body.length);
        
        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), UTF_8))){
            StringBuilder response = new StringBuilder();
            String responseLine;
            while((responseLine = br.readLine()) != null){
                response.append(responseLine.trim());
            }
            
            return response.toString();
        }
    }
    
    /**
     * Sends a request and receives a response.
     * It also saves the received token in the response-header.
     */
    public static String tokenHttpHandler(String httpBody) throws IOException{
        OutputStream outputStream = con.getOutputStream();
        byte[] body = httpBody.getBytes(UTF_8);
        outputStream.write(body, 0, body.length);
        
        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), UTF_8))){
            StringBuilder response = new StringBuilder();
            String responseLine;
            while((responseLine = br.readLine()) != null){
                response.append(responseLine.trim());
            }
            token = con.getHeaderField("Authentication");
            
            return  response.toString();
        }
    }
    
    /**
     * Opens a connection to a given url.
     */
    public static void connectSetter(URL url) throws IOException {
        con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("Accept", "application/json");
        if (token != null) {
            con.setRequestProperty("Authorization", "Bearer " + token);
        }
        con.setDoOutput(true);
    }
    
    //region System
    /**Sends request to add.*/
    public static String systemAdd(String[] args, KeyPair keyPair, String uuid) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/registry/add");

        connectSetter(url);
        
        String publicKey = Base64.getEncoder().encodeToString(keyPair.getPublic().getEncoded());
        
        String jsonInputString = new JSONObject()
                .put("uuid", uuid)
                .put("publickey", publicKey)
                .put("instancetype", args[1])
                .put("version", args[2])
                .toString();
    
        return httpHandler(jsonInputString);
    
        //System.out.println(response);
    }
    
    /**Sends request to addAdmin.*/
    public static String systemAddAdmin(String[] args, KeyPair keyPair, String uuid) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/registry/addAdmin");
        
        connectSetter(url);
        
        String publicKey = Base64.getEncoder().encodeToString(keyPair.getPublic().getEncoded());
        
        String jsonInputString = new JSONObject()
                .put("uuid", uuid)
                .put("publickey", publicKey)
                .put("instancetype", args[1])
                .put("version", args[2])
                .toString();
        
        return httpHandler(jsonInputString);
        
        //System.out.println(response);
    }
    
    /**Sends request to adopt.*/
    public static String systemAdopt(String uuid, boolean adopt) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/registry/adopt");

        connectSetter(url);
    
        String jsonInputString = new JSONObject()
                .put("uuid", uuid)
                .put("adopt", adopt)
                .toString();
    
        return httpHandler(jsonInputString);
    
        //System.out.println(response);
    }
    
    /**Sends request to login.*/
    public static String systemLogin(KeyPair keyPair, String uuid) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/registry/login");

        connectSetter(url);

        String message = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));

        byte[] signature = sign(message, keyPair.getPrivate());
    
        assert signature != null;
        String jsonInputString = new JSONObject()
                .put("uuid", uuid)
                .put("signature", Base64.getEncoder().encodeToString(signature))
                .put("msg", message)
                .toString();
    
        return tokenHttpHandler(jsonInputString);
        
        //System.out.println(response);
    }
    
    /**
     * Sends request to add.
     */
    public static String systemUpdate(String[] args) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/registry/update");
        
        connectSetter(url);
    
        String jsonInputString = new JSONObject()
                .put("version", args[1])
                .toString();
    
        return httpHandler(jsonInputString);
    
        //System.out.println(response);
    }
    
    /**
     * Sends request to heartbeat.
     * Should be executed every 5 seconds.
     */
    public static String systemHeartbeat() throws IOException{
        URL url = new URL("http://localhost:8080/registry/heartbeat");
        
        connectSetter(url);
    
        return httpHandler("");
    
        //System.out.println(response);
    }
    
    /**Sends request to list.*/
    public static String systemList(String[] args) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/registry/list");
    
        connectSetter(url);
    
        String jsonInputString = new JSONObject()
                .put("filter", new JSONObject()
                        .put("status", args[1])
                        .put("instancetype", args[2]))
                .toString();
    
        return httpHandler(jsonInputString);
        
        //System.out.println(response);
    }
    
    /**
     * Sends request to add.
     * Only for testing.
     */
    public static String systemDelete() throws IOException{
        URL url = new URL("http://localhost:8080/registry/delete");
        
        connectSetter(url);
        
        return httpHandler("");
        
        //System.out.println(response);
    }
    //endregion
    
    //region Tenant
    
    /**
     * Sends request to add.
     */
    public static String tenantAdd(String[] args) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/ws/tenants/add");
        
        connectSetter(url);
        
        String jsonInputString = new JSONObject()
                .put("externalid", args[1])
                .put("name", args[2])
                .put("expirationdate", args[3])
                .toString();
        
        return httpHandler(jsonInputString);
    }
    
    /**
     * Sends request to update.
     */
    public static String tenantUpdate(String[] args) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/ws/tenants/update");
        
        connectSetter(url);
        
        String jsonInputString = new JSONObject()
                .put("externalid", args[1])
                .put("name", args[2])
                .put("expirationdate", args[3])
                .toString();
        
        return httpHandler(jsonInputString);
    }
    
    /**
     * Sends request to list.
     */
    public static String tenantList() throws IOException{
        URL url = new URL("http://localhost:8080/ws/tenants/list");
        
        connectSetter(url);
        
        return httpHandler("");
    }
    
    /**
     * Sends request to delete.
     */
    public static String tenantDelete(String[] args) throws IOException, JSONException{
        URL url = new URL("http://localhost:8080/ws/tenants/delete");
        
        connectSetter(url);
        
        String jsonInputString = new JSONObject()
                .put("externalid", args[1])
                .toString();
        
        return httpHandler(jsonInputString);
    }
    //endregion
}
