<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:14 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link href="css/base.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
    <link href="css/userManagement.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<div class="header">
    <a class="header-brand" href="#">失物招领系统</a>
    <div class="nav left">
        <ul>
            <li class="nav-item"><a href="#">首页</a></li>
            <li class="nav-item"><a href="#">失物招领信息</a></li>
            <li class="nav-item"><a href="#">发布新信息</a></li>
        </ul>
    </div>

    <ul class="nav-user right">
        <!--已登录时显示-->
        <li class="nav-item user-info">
            <a href="#"><img alt="" class="user-avatar" src="img/avatar.jpg"><span class="user-name">Double</span></a>
            <div class="dropdown" id="user-dropdown">
                <a class="dropdown-item" href="">个人中心</a>
                <a class="dropdown-item" href="">我的发布</a>
                <a class="dropdown-item" href="">退出登录</a>
            </div>
        </li>
        <!--未登录时显示-->
        <!--		<li class="nav-item"><a href="#">注册</a></li>
                <li class="nav-item"><a href="#">登录</a></li>-->
    </ul>
</div>
<!--Header End-->

<!--Main Start-->
<!-- Main Start -->
<div class="w">
    <div class="main box-shadow">
        <div class="hd">
            <div class="avatar">
                <img alt="" src="img/avatar.jpg">
            </div>
            <div class="user-primary">
                <p class="username">Double</p>
                <p class="user-role">普通用户</p>
            </div>
        </div>
        <div class="bd">
            <div class="bd-nav">
                <ul>
                    <li class="bd-nav-item"><a href="#">账户管理</a></li>
                    <li class="bd-nav-item"><a href="#">发布信息管理</a></li>
                    <li class="bd-nav-item"><a href="#">最新通知</a></li>
                    <li class="bd-nav-item"><a class="current" href="#">用户管理</a></li>
                    <li class="bd-nav-item"><a href="#">系统通知管理</a></li>
                    <li class="bd-nav-item"><a href="#">系统设置</a></li>
                </ul>
            </div>
            <div class="title">
                <h5>用户管理</h5>
                <p>用户数: <span>100</span></p>
            </div>
            <div class="content">
                <div class="content-head">
                    <ul>
                        <li class="content-head-item uUsername">用户名</li>
                        <li class="content-head-item uEmail">邮箱</li>
                        <li class="content-head-item uPhoneNum">手机号</li>
                        <li class="content-head-item uQQ">QQ</li>
                        <li class="content-head-item uRole">角色</li>
                        <li class="content-head-item operation">操作</li>
                    </ul>
                </div>
                <div class="content-body clearfix">
                    <ul id="123">
                        <li class="content-head-item uUsername">DoubleFloat</li>
                        <li class="content-head-item uEmail">203814477@qq.com</li>
                        <li class="content-head-item uPhoneNum">13145218799</li>
                        <li class="content-head-item uQQ">203814477</li>
                        <li class="content-head-item uRole">管理员</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete" onclick="deleteElement(123)">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item uUsername">DoubleFloat</li>
                        <li class="content-head-item uEmail">203814477@qq.com</li>
                        <li class="content-head-item uPhoneNum">13145218799</li>
                        <li class="content-head-item uQQ">203814477</li>
                        <li class="content-head-item uRole">管理员</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main End -->
<!--Main End-->


<!--Footer Start-->
<footer>
    <p class="footer-projectname">江苏师范大学失物招领系统</p>
    <p class="footer-beian"><a href="http://www.miitbeian.gov.cn" target="_blank">苏ICP备19055214号-1</a></p>
</footer>

<!--Footer End-->
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="js/common.js"></script>
<script>
    $(() => {
        navDropDown();
    });
</script>
</body>
</html>