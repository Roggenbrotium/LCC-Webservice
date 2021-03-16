package com.liland.lcc.cl;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.liland.lcc.dto.UserListResponse;
import org.json.JSONException;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.testng.annotations.Test;

import javax.transaction.Transactional;
import java.io.IOException;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@Transactional
class ClientApplicationTest {

    /*public static void main(String[] args) throws Exception {
        systemAddTest();
        systemAdoptTest();
        systemUpdateTest();
        systemHeartbeatTest();
        systemDeleteTest();
        
        tenantAddTest();
        tenantUpdateTest();
        tenantDeleteTest();
    }
    
    @Test
    public static void systemAddTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
    
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
    
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
    
        ClientApplication.systemAdopt(uuid, true);
    
        args = new String[]{"", "ADOPTED", "IGOV_APP"};
        String response = ClientApplication.systemList(args);
        
        if(response.contains(uuid)){
            System.out.println("Add works");
        }else {
            System.out.println("Add doesn't work");
        }
    
        ClientApplication.systemDelete();
        ClientApplication.systemLogin(keyPair, uuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void systemAdoptTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        String response = ClientApplication.systemLogin(keyPair, uuid);
        if(response.contains("NOT_ADOPTED")){
            System.out.println("Adopt doesn't work");
        }else {
            System.out.println("Adopt works");
        }
    
        ClientApplication.systemDelete();
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void systemUpdateTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        ClientApplication.systemLogin(keyPair, uuid);
    
        args = new String[]{"", "1.2.3"};
        ClientApplication.systemUpdate(args);
    
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
    
        args = new String[]{"", "ADOPTED", "IGOV_APP"};
        String response = ClientApplication.systemList(args);
    
        UserListResponse userListResponse = new ObjectMapper().readValue(response, UserListResponse.class);
        
        for(int i = 0; i < userListResponse.getList().size(); i++){
            if(userListResponse.getList().get(i).getUuid().equals(uuid) &&
                    userListResponse.getList().get(i).getVersion().equals("1.2.3")){
                System.out.println("Update works");
                ClientApplication.systemDelete();
                ClientApplication.systemLogin(keyPair, uuid);
                ClientApplication.systemDelete();
                return;
            }
        }
        
        System.out.println("Update doesn't work");
        ClientApplication.systemDelete();
        ClientApplication.systemLogin(keyPair, uuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void systemHeartbeatTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        ClientApplication.systemLogin(keyPair, uuid);
        
        ClientApplication.systemHeartbeat();
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        args = new String[]{"", "ADOPTED", "IGOV_APP"};
        String response = ClientApplication.systemList(args);
        
        UserListResponse userListResponse = new ObjectMapper()
                .registerModule(new JavaTimeModule()).readValue(response, UserListResponse.class);
        
        for(int i = 0; i < userListResponse.getList().size(); i++){
            if(userListResponse.getList().get(i).getUuid().equals(uuid) &&
                    userListResponse.getList().get(i).getTimestamp() != null){
                System.out.println("Heartbeat works");
                ClientApplication.systemDelete();
                ClientApplication.systemLogin(keyPair, uuid);
                ClientApplication.systemDelete();
                return;
            }
        }
        
        System.out.println("Heartbeat doesn't work");
        ClientApplication.systemDelete();
        ClientApplication.systemLogin(keyPair, uuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void systemListTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        args = new String[]{"", "ADOPTED", "IGOV_APP"};
        String response = ClientApplication.systemList(args);
        
        if(response.isEmpty()){
            System.out.println("List doesn't work");
        }else {
            System.out.println("List works");
        }
    
        ClientApplication.systemDelete();
        ClientApplication.systemLogin(keyPair, uuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void systemDeleteTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        ClientApplication.systemLogin(keyPair, uuid);
        
        ClientApplication.systemDelete();
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        args = new String[]{"", "ADOPTED", "IGOV_APP"};
        String response = ClientApplication.systemList(args);
        
        if(response.contains(uuid)){
            System.out.println("Delete doesn't work");
        }
        else {
            System.out.println("Delete works");
        }
        
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void tenantAddTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        ClientApplication.systemLogin(keyPair, uuid);
    
        args = new String[]{"", "1234", "testTenant", "2021-05-01"};
        ClientApplication.tenantAdd(args);
        
        String response = ClientApplication.tenantList();
        
        if(response.contains("1234")){
            System.out.println("Add works");
        }
        else {
            System.out.println("Add doesn't work");
        }
    
        args = new String[]{"", "1234"};
        ClientApplication.tenantDelete(args);
        ClientApplication.systemDelete();
    
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void tenantUpdateTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        ClientApplication.systemLogin(keyPair, uuid);
        
        args = new String[]{"", "1234", "testTenant", "2021-05-01"};
        ClientApplication.tenantAdd(args);
    
        args = new String[]{"", "1234", "testTenanttest", "2022-06-02"};
        ClientApplication.tenantUpdate(args);
        
        String response = ClientApplication.tenantList();
        
        if(response.contains("testTenanttest")){
            System.out.println("Update works");
        }
        else {
            System.out.println("Update doesn't work");
        }
        
        args = new String[]{"", "1234"};
        ClientApplication.tenantDelete(args);
        ClientApplication.systemDelete();
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void tenantListTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        ClientApplication.systemLogin(keyPair, uuid);
        
        args = new String[]{"", "1234", "testTenant", "2021-05-01"};
        ClientApplication.tenantAdd(args);
        
        String response = ClientApplication.tenantList();
        
        if(response.contains("1234")){
            System.out.println("List works");
        }
        else {
            System.out.println("List doesn't work");
        }
        
        args = new String[]{"", "1234"};
        ClientApplication.tenantDelete(args);
        ClientApplication.systemDelete();
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        ClientApplication.systemDelete();
    }
    
    @Test
    public static void tenantDeleteTest() throws NoSuchAlgorithmException,
            IOException, JSONException{
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        
        KeyPair adminKeyPair = ClientApplication.keyGen();
        String adminUuid = ClientApplication.uuidGen();
        args = new String[]{"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAddAdmin(args, adminKeyPair, adminUuid);
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        
        ClientApplication.systemAdopt(uuid, true);
        
        ClientApplication.systemLogin(keyPair, uuid);
        
        args = new String[]{"", "1234", "testTenant", "2021-05-01"};
        ClientApplication.tenantAdd(args);
        args = new String[]{"", "1234"};
        ClientApplication.tenantDelete(args);
        
        String response = ClientApplication.tenantList();
        
        if(!response.contains("1234")){
            System.out.println("Delete works");
        }
        else {
            System.out.println("Delete doesn't work");
        }
        
        ClientApplication.systemDelete();
        
        ClientApplication.systemLogin(adminKeyPair, adminUuid);
        ClientApplication.systemDelete();
    }
    
    //TODO Tenat Test Functions
    
    @Test
    public static void keyTest() throws Exception {
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IGOV_APP", "5.0.177"};
        ClientApplication.systemAdd(args, keyPair, uuid);
        ClientApplication.systemAdopt(uuid, true);
        ClientApplication.systemLogin(keyPair, uuid);
        args = new String[]{"", "1.2.3"};
        ClientApplication.systemUpdate(args);
        ClientApplication.systemHeartbeat();
        args = new String[]{"", "ADOPTED", "IGOV_APP"};
        ClientApplication.systemList(args);
        args = new String[]{"", "123123", "blah", "2021-05-01"};
        ClientApplication.tenantAdd(args);
        args = new String[]{"", "123123", "blahblah", "2022-06-02"};
        ClientApplication.tenantUpdate(args);
        args = new String[]{"", "321321", "habl", "2021-06-02"};
        ClientApplication.tenantAdd(args);
        args = new String[]{"", "321321", "hablhabl", "2022-05-01"};
        ClientApplication.tenantUpdate(args);
        args = new String[]{"", "123123"};
        ClientApplication.tenantDelete(args);
        ClientApplication.tenantList();
        //ClientApplication.delete(uuid);
    }*/
}
