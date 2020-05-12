<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:13 下午
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
    <title>个人中心</title>
    <link rel="stylesheet" href="<%=path%>/css/base.css">
    <link rel="stylesheet" href="<%=path%>/css/common.css">
    <link rel="stylesheet" href="<%=path%>/css/userInformation.css">
</head>
<body>
<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->

<!-- Main Start -->
<div class="w">
    <div class="main box-shadow">
        <div class="hd">
            <div class="avatar">
                <img src="<%=path%>/upload/${user.avatar}" alt="">
            </div>
            <div class="user-primary">
                <p class="username">${user.username}</p>
                <c:if test="${user.role eq 1}">
                    <p class="user-role">普通用户</p>
                </c:if>
                <c:if test="${user.role eq 2}">
                    <p class="user-role">管理员</p>
                </c:if>
                <c:if test="${user.role eq 3}">
                    <p class="user-role">超级管理员</p>
                </c:if>
            </div>
        </div>
        <div class="bd">
            <div class="bd-nav">
                <ul>
                    <li class="bd-nav-item"><a class="current" href="#">账户管理</a></li>
                    <li class="bd-nav-item"><a href="#">发布信息管理</a></li>
                    <li class="bd-nav-item"><a href="#">最新通知</a></li>
                    <c:if test="${user.role eq 1 or user.role eq 2}">
                        <li class="bd-nav-item"><a href="#">用户管理</a></li>
                        <li class="bd-nav-item"><a href="#">系统通知管理</a></li>
                    </c:if>
                    <c:if test="${user.role eq 2}">
                        <li class="bd-nav-item"><a href="#">系统设置</a></li>
                    </c:if>
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
                        <p class="value password"></p>
                        <a href="" class="update">修改</a></li>
                    <li class="content-item">
                        <p class="key">邮箱</p>
                        <p class="value">${user.email}</p>
                        <a href="" class="update">修改</a></li>
                    <li class="content-item">
                        <p class="key">手机号码</p>
                        <p class="value">${user.phoneNum}</p>
                        <a href="" class="update">修改</a></li>
                    <li class="content-item">
                        <p class="key">QQ</p>
                        <p class="value">${user.qq}</p>
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
</body>
</html>