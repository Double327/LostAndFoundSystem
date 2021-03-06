package cn.doublefloat.lostandfound.controller;

import cn.doublefloat.lostandfound.entity.LafInformation;
import cn.doublefloat.lostandfound.entity.User;
import cn.doublefloat.lostandfound.service.ILafInformationService;
import cn.doublefloat.lostandfound.utils.LAFUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * @author 李广帅
 * @date 2020/5/11 10:49 上午
 */
@Controller
@RequestMapping("/laf")
public class LafInformationController {

    @Autowired
    @Qualifier("lafInformationService")
    private ILafInformationService lafInformationService;

    /**
     * 处理信息列表页请求
     *
     * @return 信息列表页
     */
    @RequestMapping("/lafList")
    public String lafInfoList(Model model) {
        List<LafInformation> lafInformationList = lafInformationService.getAllInformationByStatus(1);
        model.addAttribute("lafInformationList", lafInformationList);
        return "lafInfoList";
    }


    /**
     * 添加新丢失、找回信息
     *
     * @param request 请求信息
     * @param session session对象
     * @param lafInfo 信息内容
     * @param upload  上传图片
     * @return 转发至信息列表页
     */
    @RequestMapping(value = "/addLafInfo", method = RequestMethod.POST)
    public String addLafInfo(HttpServletRequest request, HttpSession session, LafInformation lafInfo, MultipartFile upload) {
        User user = (User) session.getAttribute("user");
        lafInfo.setUserId(user.getId());
        String path = request.getSession().getServletContext().getRealPath("/upload");
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        lafInfo.setId(LAFUtils.getId());
        String filename = lafInfo.getId() + ".jpg";
        lafInfo.setImage(filename);
        try {
            upload.transferTo(new File(path, filename));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("图片上传失败");
        }
        lafInformationService.addLafInformation(lafInfo);
        return "redirect:/laf/lafList";
    }

    /**
     * 个人发布丢失、找回信息管理
     * @param session session对象
     * @param model 数据
     * @return 发布管理页
     */
    @RequestMapping("/lafInfoManagement")
    public String lafInfoManagement(Integer page, HttpSession session, Model model) {
        System.out.println(page);
        Integer newPage = 1;
        if (page != null) {
            newPage = page;
        }
        User user = (User) session.getAttribute("user");
        System.out.println(user);
        List<LafInformation> lafInformationList = lafInformationService.getLafInfoByUserIdWithPage(user.getId(), page);
        Integer lafInfoCount = lafInformationList.size();
        model.addAttribute("lafInformationList", lafInformationList);
        model.addAttribute("lafInfoCount", lafInfoCount);
        model.addAttribute("thisPage", newPage);
        return "lafInfoManagement";
    }

    /**
     * 跳转至发布信息页
     *
     * @return 发布信息页
     */
    @RequestMapping("/toReleaseLafInfo")
    public String toReleaseLafInfo() {
        return "releaseLafInfo";
    }
}
