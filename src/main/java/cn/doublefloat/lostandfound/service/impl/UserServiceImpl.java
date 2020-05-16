package cn.doublefloat.lostandfound.service.impl;

import cn.doublefloat.lostandfound.dao.IUserDao;
import cn.doublefloat.lostandfound.entity.User;
import cn.doublefloat.lostandfound.service.IUserService;
import cn.doublefloat.lostandfound.utils.LAFUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/9 5:23 下午
 */
@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    @Qualifier("userDao")
    private IUserDao userDao;

    /**
     * 一页显示的数据条数
     */
    private final Integer pageLine;

    public UserServiceImpl() {
        pageLine = 8;
    }

    @Override
    public void addUser(User user) {
        user.setId(LAFUtils.getId());
        userDao.addUser(user);
    }

    @Override
    public void deleteUserById(String id) {
        userDao.deleteUserById(id);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void updateUsername(String id, String username) {
        userDao.updateUsername(id, username);
    }

    @Override
    public void updatePassword(String id, String password) {
        userDao.updatePassword(id, password);
    }

    @Override
    public void updatePhoneNum(String id, String phoneNum) {
        userDao.updatePhoneNum(id, phoneNum);
    }

    @Override
    public void updateEmail(String id, String email) {
        userDao.updateEmail(id, email);
    }

    @Override
    public void updateQQ(String id, String qq) {
        userDao.updateQQ(id, qq);
    }

    @Override
    public List<User> getAllUsersWithPage(Integer page) {
        Integer start = 0;
        if (page != null) {
            start = (page - 1) * pageLine;
        }
        return userDao.getAllUsersWithPage(start, pageLine);
    }

    @Override
    public List<User> getUsersByUnderRoleWithPage(Integer role, Integer page) {
        Integer start = 0;
        if (page != null) {
            start = (page - 1) * pageLine;
        }
        return userDao.getUsersUnderRoleWithPage(role, start, pageLine);
    }


    @Override
    public User getUserById(String id) {
        return userDao.getUserById(id);
    }

    @Override
    public User getUserByUsernameAndPassword(String username, String password) {
        return userDao.getUserByUsernameAndPassword(username, password);
    }

    @Override
    public Boolean checkUsernameExist(String username) {
        return userDao.getUsersByUsername(username).size() > 0;
    }

    @Override
    public Integer getQuantityOfUsers() {
        return userDao.getQuantityOfUsers();
    }
}
