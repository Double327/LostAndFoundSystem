package cn.doublefloat.lostandfound.controller;

import cn.doublefloat.lostandfound.entity.User;
import cn.doublefloat.lostandfound.service.IUserService;
import cn.doublefloat.lostandfound.utils.LAFUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * @author 李广帅
 * @date 2020/5/9 8:39 下午
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userService")
    private IUserService userService;

    /**
     * 用户登录
     *
     * @param username 用户名
     * @param password 密码
     * @param session  session对象
     * @return 成功：首页 失败：登录页
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password, HttpSession session) {
        User user = userService.getUserByUsernameAndPassword(username, LAFUtils.getMD5(password));
        if (user != null) {
            session.setAttribute("user", user);
            return "index";
        }
        return "login";
    }

    /**
     * 用户注册
     *
     * @return 登录页面
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(User user) {
        if (!userService.checkUsernameExist(user.getUsername())) {
            user.setPassword(LAFUtils.getMD5(user.getPassword()));
            System.out.println(user);
            userService.addUser(user);
        }
        return "login";
    }


    /**
     * 用户退出登录
     *
     * @param session session对象
     * @return 首页
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "index";
    }

    /**
     * 跳转至登录页面
     *
     * @return 登录页面
     */
    @RequestMapping("/toLogin")
    public String toLogin(HttpSession session) {
        if (session.getAttribute("user") != null) {
            return "index";
        }
        return "login";
    }

    /**
     * 跳转至注册页面
     *
     * @return 注册页面
     */
    @RequestMapping("/toRegister")
    public String toRegister() {
        return "register";
    }
}