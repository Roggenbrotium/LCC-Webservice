package com.liland.lcc.cl;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.*;
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

    public static void main(String[] args) throws IOException, NoSuchAlgorithmException {
        KeyPair keyPair = keyGen();
        String uuid = uuidGen();

        switch (args[0]) {
            case "register":
                add(args, keyPair, uuid);
                break;
            case "login":
                login(keyPair, uuid);
                break;
            default:
                System.out.println("Error");
                break;
        }
    }

    //signs a message with the given private key
    public static byte[] sign(String message, PrivateKey privateKey) {
        try {
            byte[] byteMsg = message.getBytes(UTF_8);

            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashMsg = md.digest(byteMsg);

            Cipher cipher = Cipher.getInstance("RSA");
            cipher.init(Cipher.ENCRYPT_MODE, privateKey);
            return cipher.doFinal(hashMsg);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException |
                BadPaddingException | IllegalBlockSizeException e) {
            System.out.println(Arrays.toString(e.getStackTrace()));
            return null;
        }
    }

    public static String uuidGen() {
        return UUID.randomUUID().toString();
    }

    public static KeyPair keyGen() throws NoSuchAlgorithmException {
        KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
        kg.initialize(4096);

        return kg.generateKeyPair();
    }

    //sends a request and receives a response
    //returns the response as a String
    public static String httpHandler(String httpBody) throws IOException {
        OutputStream outputStream = con.getOutputStream();
        byte[] body = httpBody.getBytes(UTF_8);
        outputStream.write(body, 0, body.length);

        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), UTF_8))) {
            StringBuilder response = new StringBuilder();
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }

            return response.toString();
        }
    }

    //does pretty much the same as httpHandler but also saves the token received in the resonse-header
    public static void tokenHttpHandler(String httpBody) throws IOException {
        OutputStream outputStream = con.getOutputStream();
        byte[] body = httpBody.getBytes(UTF_8);
        outputStream.write(body, 0, body.length);

        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), UTF_8))) {
            StringBuilder response = new StringBuilder();
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }
            token = con.getHeaderField("Authentication");

            System.out.println(response);
        }
    }

    //opens a connection to a given url
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

    //sends request to add
    public static void add(String[] args, KeyPair keyPair, String uuid) throws IOException {
        URL url = new URL("http://localhost:8080/registry/add");

        connectSetter(url);

        String publicKey = Base64.getEncoder().encodeToString(keyPair.getPublic().getEncoded());
        String jsonInputString = "{\"uuid\": \"" + uuid + "\", \"publickey\": \"" + publicKey + "\"," +
                " \"instancetype\": \"" + args[1] + "\", \"version\": \"" + args[2] + "\"}";

        System.out.println(jsonInputString);

        String response = httpHandler(jsonInputString);
        System.out.println(response);
    }

    //sends request to adopt
    public static void adopt(String uuid, boolean adopt) throws IOException {
        URL url = new URL("http://localhost:8080/registry/adopt");

        connectSetter(url);

        String jsonInputString = "{\"uuid\": \"" + uuid + "\", \"adopt\": \"" + adopt + "\"}";

        System.out.println(jsonInputString);

        String response = httpHandler(jsonInputString);
        System.out.println(response);
    }

    //sends request to login
    public static void login(KeyPair keyPair, String uuid) throws IOException {
        URL url = new URL("http://localhost:8080/registry/login");

        connectSetter(url);

        String message = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS"));

        byte[] signature = sign(message, keyPair.getPrivate());

        assert signature != null;
        String jsonInputString = "{\"uuid\": \"" + uuid + "\", \"signature\": \"" + Base64.getEncoder().encodeToString(signature) + "\"," +
                " \"msg\": \"" + message + "\"}";

        System.out.println(jsonInputString);

        tokenHttpHandler(jsonInputString);
    }

    //sends request to add
    public static void update(String[] args) throws IOException {
        URL url = new URL("http://localhost:8080/registry/update");

        connectSetter(url);

        String jsonInputString = "{\"version\": \"" + args[1] + "\"}";

        System.out.println(jsonInputString);

        String response = httpHandler(jsonInputString);
        System.out.println(response);
    }

    //sends request to heartbeat
    //should be executed every 5 seconds
    public static void heartbeat() throws IOException {
        URL url = new URL("http://localhost:8080/registry/heartbeat");

        connectSetter(url);

        String jsonInputString = "";

        String response = httpHandler(jsonInputString);
        System.out.println(response);
    }

    //sends request to list
    public static void list(String[] args) throws IOException {
        URL url = new URL("http://localhost:8080/registry/list");

        connectSetter(url);

        if (args[1].equals("")) {
            args[1] = null;
        }

        String jsonInputString = "{\"filter\": {\"status\": " + args[1] + ", \"instancetype\": \"" + args[2] + "\"}}";

        System.out.println(jsonInputString);

        String response = httpHandler(jsonInputString);
        System.out.println(response);
    }

    //sends request to add
    //only for testing
    public static void delete(String uuid) throws IOException {
        URL url = new URL("http://localhost:8080/registry/delete");

        connectSetter(url);

        String jsonInputString = "{\"uuid\": \"" + uuid + "\"}";

        System.out.println(jsonInputString);

        String response = httpHandler(jsonInputString);
        System.out.println(response);
    }
}
