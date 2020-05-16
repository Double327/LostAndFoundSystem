package cn.doublefloat.lostandfound.dao;

import cn.doublefloat.lostandfound.entity.User;
import cn.doublefloat.lostandfound.utils.LAFUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/8 10:30 下午
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestUserDao {
    @Autowired()
    @Qualifier("userDao")
    private IUserDao userDao;

    @Test
    public void testAddUser() {
        User user = new User();
        user.setId(LAFUtils.getId());
        user.setUsername("root");
        user.setPassword(LAFUtils.getMD5("root"));
        userDao.addUser(user);
    }

    @Test
    public void testDeleteUser() {
        userDao.deleteUserById("a684f4f00a3d4dc99ae7437cb81ecaa0");
    }

    @Test
    public void testUpdateUser() {
        User user = userDao.getUserById("375f80b705a24751b06d5fc70496f925");
        user.setEmail("203814477@qq.com");
        user.setPhoneNum("13145218799");
        user.setQq("203814477");
        userDao.updateUser(user);
    }

    @Test
    public void testUpdateUsername() {
        userDao.updateUsername("375f80b705a24751b06d5fc70496f925", "admin");
    }

    @Test
    public void testUpdatePassword() {
        userDao.updatePassword("375f80b705a24751b06d5fc70496f925", LAFUtils.getMD5("admin"));
    }

    @Test
    public void testUpdateEmail() {
        userDao.updateEmail("375f80b705a24751b06d5fc70496f925", "180303665@qq.com");
    }

    @Test
    public void testUpdatePhoneNum() {
        userDao.updatePhoneNum("375f80b705a24751b06d5fc70496f925", "18361330636");
    }

    @Test
    public void testUpdateQQ() {
        userDao.updateQQ("375f80b705a24751b06d5fc70496f925", "180303665");
    }

    @Test
    public void testGetAllUsers() {
        List<User> users = userDao.getAllUsersWithPage(1, 8);
        for (User user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void testGetUserByUsernameAndPassword() {
        User user = userDao.getUserByUsernameAndPassword("root", LAFUtils.getMD5("root"));
        System.out.println(user);
    }

    @Test
    public void testGetUserById() {
        User user = userDao.getUserById("375f80b705a24751b06d5fc70496f925");
        System.out.println(user);
    }

    @Test
    public void testGetUsersByUsername() {
        List<User> users = userDao.getUsersByUsername("admin");
        for (User user : users) {
            System.out.println(user);
        }
    }
}
