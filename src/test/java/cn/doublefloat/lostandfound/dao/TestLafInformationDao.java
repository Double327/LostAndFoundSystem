package cn.doublefloat.lostandfound.dao;

import cn.doublefloat.lostandfound.entity.LafInformation;
import cn.doublefloat.lostandfound.utils.LAFUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/11 9:27 上午
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestLafInformationDao {

    @Autowired
    @Qualifier("lafInformationDao")
    private ILafInformationDao lafInformationDao;

    @Test
    public void testAddLafInfo() {
        LafInformation info = new LafInformation(LAFUtils.getId(), LAFUtils.getId(), "丢失一个黑色钱包", 0, new Date(), "江苏省徐州市经济开发区", "黑色、里面有若干现金", "123", new Date(), 0);
        lafInformationDao.addLafInformation(info);
    }

    @Test
    public void testDeleteLafInfo() {
        lafInformationDao.deleteLafInfo("93345bf429d442ea88e5cef4e6a103bf");
    }

    @Test
    public void testUpdateLafInfoTitle() {
        lafInformationDao.updateLafInfoTitle("57b0eba8b543480b88ea03137cab26f9", "丢失一个黑色白色钱包");
    }

    @Test
    public void testUpdateLafInfoStatus() {
        lafInformationDao.updateLafInfoStatus("57b0eba8b543480b88ea03137cab26f9", 1);
    }


    @Test
    public void testGetAllLafInfo() {
        List<LafInformation> lafInformationList = lafInformationDao.getAllInformation();
        for (LafInformation lafInformation : lafInformationList) {
            System.out.println(lafInformation);
        }
    }

    @Test
    public void testGetLafInfoById() {
        LafInformation lafInformation = lafInformationDao.getLafInfoById("57b0eba8b543480b88ea03137cab26f9");
        System.out.println(lafInformation);
    }


    @Test
    public void testGetLafInfoByName() {
        List<LafInformation> lafInformationList = lafInformationDao.getLafInfoByName("%钱包%");
        for (LafInformation lafInformation : lafInformationList) {
            System.out.println(lafInformation);
        }
    }
}
