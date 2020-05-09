package cn.doublefloat.lostandfound.utils;


import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

/**
 * @author 李广帅
 * @date 2020/5/8 11:12 下午
 */
public class LAFUtils {

    public static String getId() {
        String uuid = UUID.randomUUID().toString().replace("-", "");
        return uuid;
    }

    public static String getMD5(String content) {
        MessageDigest md5 = null;
        try {
            md5 = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        byte[] byteArray;
        StringBuffer hexValue = new StringBuffer();;
        try {
            byteArray = content.getBytes("UTF-8");
            byte[] md5Byte = md5.digest(byteArray);
            for (int i = 0; i < md5Byte.length; i++) {
                int val = ((int) md5Byte[i]) & 0xff;
                if (val < 16) {
                    hexValue.append("0");
                }
                hexValue.append(Integer.toHexString(val));
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return hexValue.toString();
    }
}
