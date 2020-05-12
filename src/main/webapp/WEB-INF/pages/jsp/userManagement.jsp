<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:14 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link href="<%=path%>/css/base.css" rel="stylesheet">
    <link href="<%=path%>/css/common.css" rel="stylesheet">
    <link href="<%=path%>/css/userManagement.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->

<!--Main Start-->
<!-- Main Start -->
<div class="w">
    <div class="main box-shadow">
        <jsp:include page="userBaseInfo.jsp"/>
        <div class="bd">
            <div class="bd-nav">
                <ul>
                    <li class="bd-nav-item"><a href="<%=path%>/user/toUserInfo">账户管理</a></li>
                    <li class="bd-nav-item"><a href="<%=path%>/laf/lafInfoManagement">发布信息管理</a></li>
                    <li class="bd-nav-item"><a href="#">最新通知</a></li>
                    <c:if test="${user.role eq 1 or user.role eq 2}">
                        <li class="bd-nav-item"><a class="current" href="<%=path%>/user/userManagement">用户管理</a></li>
                        <li class="bd-nav-item"><a href="#">系统通知管理</a></li>
                    </c:if>
                    <c:if test="${user.role eq 2}">
                        <li class="bd-nav-item"><a href="#">系统设置</a></li>
                    </c:if>
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
                    <c:forEach items="${users}" var="user" step="1">
                        <ul id="${user.id}">
                            <li class="content-head-item uUsername">${user.username}</li>
                            <li class="content-head-item uEmail">${user.email}</li>
                            <li class="content-head-item uPhoneNum">${user.phoneNum}</li>
                            <li class="content-head-item uQQ">${user.qq}</li>
                            <c:if test="${user.role eq 0}">
                                <li class="content-head-item uRole">普通用户</li>
                            </c:if>
                            <c:if test="${user.role eq 1}">
                                <li class="content-head-item uRole">管理员</li>
                            </c:if>
                            <c:if test="${user.role eq 2}">
                                <li class="content-head-item uRole">超级管理员</li>
                            </c:if>
                            <li class="content-head-item operation">
                                <button class="btn detail">详情</button>
                                <button class="btn update">修改</button>
                                <button class="btn delete" onclick="deleteUser('${user.id}')">删除</button>
                            </li>
                        </ul>
                    </c:forEach>
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
<script src="<%=path%>/js/jquery-3.5.0.min.js"></script>
<script src="<%=path%>/js/common.js"></script>
<script>
    $(() => {
        navDropDown();
    });

    function deleteUser(id) {
        console.log(id);
        let idSelector = '#' + id;

        $.getJSON("<%=path%>/user/deleteUserById", {
            'id': id
        }, (response) => {
            if (response.status === true) {
                showAlert("删除成功!!!")
            }
        });

        $(idSelector).remove();
    }
</script>
</body>
</html>