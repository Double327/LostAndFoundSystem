package cn.doublefloat.lostandfound.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 李广帅
 * @date 2020/5/11 10:49 上午
 */
@Controller
@RequestMapping("/laf")
public class LafInformationController {

    @RequestMapping("/lafList")
    public String lafInfoList() {
        return "lafInfoList";
    }
}
