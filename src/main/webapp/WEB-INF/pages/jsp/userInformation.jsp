<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:13 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/userInformation.css">
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

<!-- Main Start -->
<div class="w">
    <div class="main box-shadow">
        <div class="hd">
            <div class="avatar">
                <img src="img/avatar.jpg" alt="">
            </div>
            <div class="user-primary">
                <p class="username">Double</p>
                <p class="user-role">普通用户</p>
            </div>
        </div>
        <div class="bd">
            <div class="bd-nav">
                <ul>
                    <li class="bd-nav-item"><a class="current" href="#">账户管理</a></li>
                    <li class="bd-nav-item"><a href="#">发布信息管理</a></li>
                    <li class="bd-nav-item"><a href="#">最新通知</a></li>
                    <li class="bd-nav-item"><a href="#">用户管理</a></li>
                    <li class="bd-nav-item"><a href="#">系统通知管理</a></li>
                    <li class="bd-nav-item"><a href="#">系统设置</a></li>
                </ul>
            </div>
            <div class="title">
                <h5>账户安全</h5>
                <p>安全等级: <span>100</span></p>
            </div>
            <div class="content">
                <ul>
                    <li class="content-item">
                        <p class="key">密码</p>
                        <p class="value password"> </p>
                        <a href="" class="update">修改</a></li>
                    <li class="content-item">
                        <p class="key">邮箱</p>
                        <p class="value">123***789@qq.com</p>
                        <a href="" class="update">修改</a></li>
                    <li class="content-item">
                        <p class="key">手机号码</p>
                        <p class="value">123****6789</p>
                        <a href="" class="update">修改</a></li>
                    <li class="content-item">
                        <p class="key">QQ</p>
                        <p class="value">123***456</p>
                        <a href="" class="update">修改</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Main End -->

<!-- Footer Start -->
<footer class="footer">
</footer>
<!-- Footer End -->
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script>

    $(() => {
        startInterval();
    });


    function getTime() {
        var now = new Date();
        //获取相对于1900的时间差，比如2019年，获取的数字是 119
        var year = now.getYear();
        //获取完整的年份
        year = now.getFullYear();
        //范围0~11， 跟中国的月份相差1
        var month = now.getMonth() + 1;
        //getDate表示获取当前时间对应的月份中的天数
        var days = now.getDate();
        //表示获取星期数 ,西方国家的星期数是 0~6,0代表的是周日,其他的分别是周一到周六
        var dayOfWeek = now.getDay();
        //获取当前小时
        var hour = now.getHours();
        //获取当前分钟
        var minutes = now.getMinutes();
        //获取当前秒
        var seconds = now.getSeconds();
        //拼接时间格式, 年-月-日  时:分:秒
        var time1 = "系统当前时间:" + year + "-" + month + "-" + days + "  " + hour + ":" + minutes + ":" + seconds;
        $('.system-time').text(time1);
    }

    //定义将使用的定时器
    let timeout;

    //打开定时器
    function startInterval() {
        timeout = setInterval("getTime()", 1000);
    }

    //setInterval(调用方法，刷新间隔)

    //清空定时器，即停止定时器


    function closeInterval() {
        clearInterval(timeout);
    }
</script>
</body>
</html>