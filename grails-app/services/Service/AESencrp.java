package Service;
import java.nio.charset.Charset;
import java.security.*;
import java.security.spec.InvalidKeySpecException;

import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;

import sun.misc.*;

public class AESencrp {

	 private static final String ALGO = "AES";
	 private static final byte[] keyValue = "5xJdnbCHu9ziXyAHcG2EBz04feGf3cI=".getBytes(Charset.forName("UTF-8"));


	public static byte[] encrypt(byte[] Data) throws Exception {
	    Key key = generateKey();
	    Cipher c = Cipher.getInstance(ALGO);
	    c.init(Cipher.ENCRYPT_MODE, key);
	    byte[] encVal = c.doFinal(Data);
	    return encVal;
	}

	public static byte[] decrypt(byte[] encryptedData) throws Exception {
	    Key key = generateKey();
	    Cipher c = Cipher.getInstance(ALGO);
	    c.init(Cipher.DECRYPT_MODE, key);

	    byte[] decValue = c.doFinal(encryptedData);
	    return decValue;
	}

	private static Key generateKey() throws Exception {
	    Key key = new SecretKeySpec(keyValue, ALGO);
	    return key;
	}

}
