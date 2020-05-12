package cn.doublefloat.lostandfound.service.impl;

import cn.doublefloat.lostandfound.dao.ILafInformationDao;
import cn.doublefloat.lostandfound.entity.LafInformation;
import cn.doublefloat.lostandfound.service.ILafInformationService;
import cn.doublefloat.lostandfound.utils.LAFUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/12 4:03 下午
 */
@Service("lafInformationService")
public class LafInformationService implements ILafInformationService {

    @Autowired
    @Qualifier("lafInformationDao")
    private ILafInformationDao lafInformationDao;

    @Override
    public void addLafInformation(LafInformation info) {
        info.setCreateTime(new Date());
        info.setStatus(0);
        lafInformationDao.addLafInformation(info);
    }

    @Override
    public void deleteLafInfo(String id) {
        lafInformationDao.deleteLafInfo(id);
    }

    @Override
    public void updateLafInfoTitle(String id, String title) {
        lafInformationDao.updateLafInfoTitle(id, title);
    }

    @Override
    public void updateLafInfoStatus(String id, Integer status) {
        lafInformationDao.updateLafInfoStatus(id, status);
    }

    @Override
    public List<LafInformation> getAllInformation() {
        return lafInformationDao.getAllInformation();
    }

    @Override
    public LafInformation getLafInfoById(String id) {
        return lafInformationDao.getLafInfoById(id);
    }

    @Override
    public List<LafInformation> getLafInfoByName(String title) {
        return lafInformationDao.getLafInfoByName(title);
    }
}
