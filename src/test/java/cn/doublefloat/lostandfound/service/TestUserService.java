package cn.doublefloat.lostandfound.service;

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
 * @date 2020/5/9 5:32 下午
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestUserService {

    @Autowired()
    @Qualifier("userService")
    private IUserService userService;

    @Test
    public void testAddUser() {
        for (int i = 3; i <= 100; i++) {
            String username = "test" + i;
            String email = "test" + i + "@qq.com";
            User user = new User();
            user.setUsername(username);
            user.setPassword(LAFUtils.getMD5("123456"));
            user.setEmail(email);
            userService.addUser(user);
        }
    }

    @Test
    public void testDeleteUser() {
        userService.deleteUserById("f526b43c615b412180c190ff0a3901b5");
    }

    @Test
    public void testUpdateUser() {
        User user = userService.getUserById("375f80b705a24751b06d5fc70496f925");
        user.setEmail("203814477@qq.com");
        user.setPhoneNum("13145218799");
        user.setQq("203814477");
        userService.updateUser(user);
    }

    @Test
    public void testUpdateUsername() {
        userService.updateUsername("375f80b705a24751b06d5fc70496f925", "admin");
    }

    @Test
    public void testUpdatePassword() {
        userService.updatePassword("375f80b705a24751b06d5fc70496f925", LAFUtils.getMD5("admin"));
    }

    @Test
    public void testUpdateEmail() {
        userService.updateEmail("375f80b705a24751b06d5fc70496f925", "180303665@qq.com");
    }

    @Test
    public void testUpdatePhoneNum() {
        userService.updatePhoneNum("375f80b705a24751b06d5fc70496f925", "18361330636");
    }

    @Test
    public void testUpdateQQ() {
        userService.updateQQ("375f80b705a24751b06d5fc70496f925", "180303665");
    }

    @Test
    public void testGetAllUsers() {
        List<User> users = userService.getAllUsers();
        for (User user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void testGetUserByUsernameAndPassword() {
        User user = userService.getUserByUsernameAndPassword("root", LAFUtils.getMD5("root"));
        System.out.println(user);
    }

    @Test
    public void testGetUserById() {
        User user = userService.getUserById("375f80b705a24751b06d5fc70496f925");
        System.out.println(user);
    }

    @Test
    public void testGetUsersByUsername() {
        System.out.println(userService.checkUsernameExist("admin"));
    }
}
