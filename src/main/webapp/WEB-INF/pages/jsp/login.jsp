<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 10:59 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="<%=path%>/css/base.css">
    <link rel="stylesheet" href="<%=path%>/css/common.css">
    <link rel="stylesheet" href="<%=path%>/css/login.css">
</head>
<body>

<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->

<!--Login Form Start-->

<div class="login-box">
    <form action="<%=path%>/user/login" method="post" class="login-form">
        <div class="logo">
            登录
        </div>
        <div class="form-item">
            <i class="iconfont icon">&#xe773;</i><input type="text" class="text" name="username"
                                                        placeholder="请输入用户名...">
            <p class="tip">请输入密码</p>
        </div>
        <div class="form-item">
            <i class="iconfont icon">&#xe75b;</i><input type="password" class="text" name="password"
                                                        placeholder="请输入密码...">
            <p class="tip">请输入密码</p>
        </div>
        <div class="form-item">
            <button id="login" type="submit">登录</button>
        </div>
        <div class="form-item">
            <button type="reset">重置</button>
        </div>

        <div class="form-item">
            <a href="#" class="link-item">忘记密码？</a>
            <a href="#" class="link-item">立即注册</a>
        </div>
    </form>
</div>

<!--Login Form End-->
</body>
</html>
