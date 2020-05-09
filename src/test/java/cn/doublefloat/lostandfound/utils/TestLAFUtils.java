package cn.doublefloat.lostandfound.utils;

import org.junit.Test;

/**
 * @author 李广帅
 * @date 2020/5/8 11:16 下午
 */
public class TestLAFUtils {

    @Test
    public void testGetId() {
        for (int i = 0; i < 8; i++) {
            System.out.println(LAFUtils.getId());
        }
    }


    @Test
    public void testGetMD5() {
        System.out.println(LAFUtils.getMD5("hello"));
    }
}
