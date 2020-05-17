package cn.doublefloat.lostandfound.service;

import cn.doublefloat.lostandfound.entity.LafInformation;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/16 8:57 下午
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestLafInformationController {

    @Autowired
    @Qualifier("lafInformationService")
    private ILafInformationService lafInformationService;


    @Test
    public void testGetLafInfoByUserIdWithPage() {
        List<LafInformation> lafInformationList = lafInformationService.getLafInfoByUserIdWithPage("a60cf2094429499bb14e2b305d42e8e7", 1);
        for (LafInformation lafInformation : lafInformationList) {
            System.out.println(lafInformation);
        }
    }
}
