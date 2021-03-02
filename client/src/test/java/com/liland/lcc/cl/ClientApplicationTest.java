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

	@Test
	public static void keyTest() throws Exception {
		KeyPair keyPair = ClientApplication.keyGen();
		String uuid = ClientApplication.uuidGen();
		String[] args = {"", "IVENTCLOUD", "5.0.177"};
		ClientApplication.register(args, keyPair, uuid);
		ClientApplication.adopt(uuid);
		ClientApplication.login(keyPair, uuid);
		ClientApplication.delete(uuid);
	}
}
