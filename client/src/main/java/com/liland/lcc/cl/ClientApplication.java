package com.liland.lcc.cl;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.security.*;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Base64;

import static java.nio.charset.StandardCharsets.UTF_8;

public class ClientApplication {

    public static URL url;
    public static HttpURLConnection con;
    public static String jsonInputString;
    public static String home = System.getProperty("user.home");

    public static void main(String[] args) throws IOException, NoSuchAlgorithmException, InvalidKeySpecException,
            InvalidKeyException, SignatureException {
        switch (args[0]){
            case "register":
                url = new URL ("http://localhost:8080/registry/add");

                connectSetter();

                String uuid = uuidGen();
                String pkey = checkKey();
                jsonInputString = "{\"uuid\": \"" + uuid + "\", \"publickey\": \"" + pkey + "\"," +
                        " \"instancetype\": \"" + args[1] + "\", \"version\": \"" + args[2] + "\"}";

                httpHandler();

                break;
            case "login":
                String msg = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));

                File file = new File(home + "/.ssh/id_rsa.pub");

                String pKey = getKey(file);
                System.out.println(pKey);
                file = new File(home + "/.ssh/id_rsa");

                String privateKey = getKey(file);
                byte[] decodedKey = Base64.getDecoder().decode(privateKey);
                PKCS8EncodedKeySpec privateKeySpec = new PKCS8EncodedKeySpec(decodedKey);
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                PrivateKey decodePrivateKey = keyFactory.generatePrivate(privateKeySpec);

                Signature privateSignature = Signature.getInstance("SHA256withRSA");
                privateSignature.initSign(decodePrivateKey);
                privateSignature.update(msg.getBytes());

                byte[] signature = privateSignature.sign();

                msg = Base64.getEncoder().encodeToString(signature);

                url = new URL ("http://localhost:8080/registry/login");

                connectSetter();

                uuid = uuidGen();
                jsonInputString = "{\"uuid\": \"" + uuid + "\", \"signature\": \"" + msg + "\"}";
                System.out.println(jsonInputString);

                httpHandler();

            default:
                System.out.println("Error");
                break;
        }
    }

    public static String uuidGen() throws IOException {
            Process serialnum = Runtime.getRuntime().exec("sudo cat /sys/class/dmi/id/product_uuid");
            BufferedReader reader = new BufferedReader(new InputStreamReader(serialnum.getInputStream()));
            return reader.readLine().trim();
    }

    public static void keyGen() throws NoSuchAlgorithmException, IOException {
        KeyPairGenerator kg= KeyPairGenerator.getInstance("RSA");
        kg.initialize(4096);
        KeyPair kp = kg.generateKeyPair();
        String home = System.getProperty("user.home");
        File file = new File(home + "/.ssh/id_rsa");
        file.createNewFile();

        FileWriter fileWriter = new FileWriter(home + "/.ssh/id_rsa");
        fileWriter.write(Base64.getEncoder().encodeToString(kp.getPrivate().getEncoded()));
        fileWriter.close();

        file = new File(home + "/.ssh/id_rsa.pub");
        file.createNewFile();

        fileWriter = new FileWriter(home + "/.ssh/id_rsa.pub");
        fileWriter.write(Base64.getEncoder().encodeToString(kp.getPublic().getEncoded()));
        fileWriter.close();
    }

    public static String checkKey() throws IOException, NoSuchAlgorithmException {
        File file = new File(home + "/.ssh/id_rsa");

        if (file.exists()){
            file = new File(home + "/.ssh/id_rsa.pub");

            if (file.exists()){
                return getKey(file);
            }else {
                System.out.println("Missing Public Key");
                System.exit(0);
                return null;
            }
        }else {
            file = new File(home + "/.ssh/id_rsa.pub");

            if (file.exists()){
                System.out.println("Missing Private Key");
                System.exit(0);
                return null;
            }else {
                keyGen();
                file = new File(home + "/.ssh/id_rsa.pub");
                return getKey(file);
            }
        }
    }

    public static void httpHandler() throws IOException {
        OutputStream outputStream = con.getOutputStream();
        byte[] body = jsonInputString.getBytes(UTF_8);
        outputStream.write(body, 0, body.length);

        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), UTF_8))) {
            StringBuilder response = new StringBuilder();
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }
            System.out.println(response.toString());
        }
    }

    public static String getKey(File file) throws IOException {
        String key = Files.readString(file.toPath(), Charset.defaultCharset());
        key = key.replace("ssh-rsa", "")
                .replaceAll(System.lineSeparator(), "")
                .replaceAll("\\s+","")
                .replace("praktikum@praktikum", "")
                .replace("-----BEGIN PUBLIC KEY-----", "")
                .replace("-----END PUBLIC KEY-----", "");
        return key;
    }

    public static void connectSetter() throws IOException {
        con = (HttpURLConnection)url.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("Accept", "application/json");
        con.setDoOutput(true);
    }
}
