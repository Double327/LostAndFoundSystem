package cn.doublefloat.lostandfound.controller;

import cn.doublefloat.lostandfound.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author 李广帅
 * @date 2020/5/9 6:16 下午
 */
@Controller
public class IndexController {

    /**
     * 首页
     * @param session session对象
     * @return 首页
     */
    @RequestMapping("/index")
    public String index(HttpSession session) {
        return "index";
    }

    /**
     * 跳转至首页
     * @return 跳转首页
     */
    @RequestMapping("/")
    public String toIndex() {
        return "redirect:/index";
    }
}
