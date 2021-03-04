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

    //goes through every possible client function
    @Test
    public static void keyTest() throws Exception {
        KeyPair keyPair = ClientApplication.keyGen();
        String uuid = ClientApplication.uuidGen();
        String[] args = {"", "IVENTCLOUD", "5.0.177"};
        ClientApplication.add(args, keyPair, uuid);
        ClientApplication.adopt(uuid, true);
        ClientApplication.login(keyPair, uuid);
        args = new String[]{"", "1.2.3"};
        ClientApplication.update(args);
        ClientApplication.heartbeat();
        args = new String[]{"", "", ""};
        ClientApplication.list(args);
        ClientApplication.delete(uuid);
    }
}
