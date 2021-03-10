package com.liland.lcc.cl;

import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.testng.annotations.Test;

import javax.transaction.Transactional;
import java.security.KeyPair;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@Transactional
class ClientApplicationTest {

    public static void main(String[] args) throws Exception {
        keyTest();
    }

    /**
     * Goes through every possible client function.
     */
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
    }
}
