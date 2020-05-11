<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 11:05 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 10:54 上午
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
    <link href="css/base.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
    <link href="css/informationManagement.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->

<!--Main Start-->
<!-- Main Start -->
<div class="w">
    <div class="main box-shadow">
        <div class="hd">
            <div class="avatar">
                <img alt="" src="<%=path%>/upload/avatar.jpg">
            </div>
            <div class="user-primary">
                <p class="username">${user.username}</p>
                <c:if test="${user.role == 0}">
                    <p class="user-role">普通用户</p>
                </c:if>
                <c:if test="${user.role == 1}">
                    <p class="user-role">管理员</p>
                </c:if>
                <c:if test="${user.role == 2}">
                    <p class="user-role">超级管理员</p>
                </c:if>
            </div>
        </div>
        <div class="bd">
            <div class="bd-nav">
                <ul>
                    <li class="bd-nav-item"><a href="#">账户管理</a></li>
                    <li class="bd-nav-item"><a class="current" href="#">发布信息管理</a></li>
                    <li class="bd-nav-item"><a href="#">最新通知</a></li>
                    <li class="bd-nav-item"><a href="#">用户管理</a></li>
                    <li class="bd-nav-item"><a href="#">系统通知管理</a></li>
                    <li class="bd-nav-item"><a href="#">系统设置</a></li>
                </ul>
            </div>
            <div class="title">
                <h5>我的发布</h5>
                <p>总条数: <span>100</span></p>
            </div>
            <div class="content">
                <div class="content-head">
                    <ul>
                        <li class="content-head-item con-title">标题</li>
                        <li class="content-head-item summary">描述信息</li>
                        <li class="content-head-item type">类型</li>
                        <li class="content-head-item status">状态</li>
                        <li class="content-head-item operation">操作</li>
                    </ul>
                </div>
                <div class="content-body clearfix">
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
                        <li class="content-head-item operation">
                            <button class="btn detail">详情</button>
                            <button class="btn update">修改</button>
                            <button class="btn delete">删除</button>
                        </li>
                    </ul>
                    <ul>
                        <li class="content-head-item con-title">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item summary">江苏省徐州市经济开发区江苏省徐州市经济开发区</li>
                        <li class="content-head-item type">丢失</li>
                        <li class="content-head-item status">未找到</li>
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
