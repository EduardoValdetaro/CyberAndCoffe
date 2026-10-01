public class CryptographyDES {
String chave = "password";
public SecretKeySpec createKey(String chave) {
try {
byte[] charac = chave.getBytes("UTF-8");
MessageDigest md = MessageDigest.getInstance("SHA-1");
charac = md.digest(charac);
SecretKeySpec secretKeySpec = new SecretKeySpec(charac, "DES/ECB/PKCS5Padding");
return secretKeySpec;
} catch (...) {
(...)
}
}
}