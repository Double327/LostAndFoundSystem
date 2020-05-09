package cn.doublefloat.lostandfound.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 李广帅
 * @date 2020/5/9 8:39 下午
 */
@Controller
@RequestMapping("/user")
public class UserController {

    /**
     * 用户登录
     * @param username 用户名
     * @param password 密码
     * @return 首页
     */
    @RequestMapping("/login")
    public String login(String username, String password) {
        return "index";
    }

    /**
     * 用户注册
     * @return 登录页面
     */
    @RequestMapping("/register")
    public String register() {
        return "login";
    }

    /**
     * 跳转至登录页面
     * @return 登录页面
     */
    @RequestMapping("/toLogin")
    public String toLogin() {
        return "login";
    }

    /**
     * 跳转至注册页面
     * @return 注册页面
     */
    @RequestMapping("/toRegister")
    public String toRegister() {
        return "register";
    }
}
