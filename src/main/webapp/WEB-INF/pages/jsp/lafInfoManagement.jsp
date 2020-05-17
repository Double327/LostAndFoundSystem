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
    <link href="<%=path%>/css/base.css" rel="stylesheet">
    <link href="<%=path%>/css/common.css" rel="stylesheet">
    <link href="<%=path%>/css/informationManagement.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->

<!--Main Start-->
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
                    <li class="bd-nav-item"><a href="<%=path%>/user/toUserInfo">账户管理</a></li>
                    <li class="bd-nav-item"><a class="current" href="<%=path%>/laf/lafInfoManagement">发布信息管理</a></li>
                    <li class="bd-nav-item"><a href="#">最新通知</a></li>
                    <c:if test="${user.role eq 1 or user.role eq 2}">
                        <li class="bd-nav-item"><a href="<%=path%>/user/userManagement">用户管理</a></li>
                        <li class="bd-nav-item"><a href="#">系统通知管理</a></li>
                    </c:if>
                    <c:if test="${user.role eq 2}">
                        <li class="bd-nav-item"><a href="#">系统设置</a></li>
                    </c:if>
                </ul>
            </div>
            <div class="title">
                <h5>我的发布</h5>
                <p>总条数:<span id="total-laf-info">
                    <c:if test="${!empty lafInformationList}">
                        ${lafInfoCount}
                    </c:if>
                    <c:if test="${empty lafInformationList}">
                        0
                    </c:if>
                </span></p>
            </div>
            <div class="content clearfix">
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
                    <c:if test="${!empty lafInformationList}">
                        <c:forEach items="${lafInformationList}" var="lafInfo">
                            <ul>
                                <li class="content-head-item con-title">${lafInfo.title}</li>
                                <li class="content-head-item summary">${lafInfo.summary}</li>
                                <c:if test="${lafInfo.type eq 1}">
                                    <li class="content-head-item type">丢失</li>
                                </c:if>
                                <c:if test="${lafInfo.type eq 2}">
                                    <li class="content-head-item type">捡到</li>
                                </c:if>
                                <c:if test="${lafInfo.status eq 1}">
                                    <li class="content-head-item status">未找到</li>
                                </c:if>
                                <c:if test="${lafInfo.status eq 2}">
                                    <li class="content-head-item status">已找到</li>
                                </c:if>
                                <li class="content-head-item operation">
                                    <button class="btn detail">详情</button>
                                    <button class="btn update">修改</button>
                                    <button class="btn delete">删除</button>
                                </li>
                            </ul>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty lafInformationList}">
                        <ul>
                            <li style="text-align: center">暂无信息</li>
                        </ul>
                    </c:if>
                </div>
                <div class="page-num">
                    <a id="prevPage" href="<%=path%>/user/userManagement?page=${thisPage - 1}"
                       class="page-num-item prev">上一页</a>
                    <c:forEach var="i" begin="1" end="${lafInfoCount / 8 + 1}" step="1">
                        <c:if test="${thisPage == i}">
                            <a href="<%=path%>/user/userManagement?page=${i}" class="page-num-item current">${i}</a>
                        </c:if>
                        <c:if test="${ thisPage != i}">
                            <a href="<%=path%>/user/userManagement?page=${i}" class="page-num-item">${i}</a>
                        </c:if>
                    </c:forEach>
                    <a id="nextPage" href="<%=path%>/user/userManagement?page=${thisPage + 1}"
                       class="page-num-item next">下一页</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main End -->

<!--Footer Start-->
<footer>
    <p class="footer-projectname">江苏师范大学失物招领系统</p>
    <p class="footer-beian"><a href="http://www.miitbeian.gov.cn" target="_blank">苏ICP备19055214号-1</a></p>
</footer>

<!--Footer End-->
<script>
    $(() => {
        navDropDown();
        if (parseInt(${thisPage}) === 1) {
            $('#prevPage').attr('href', 'javascript:;');
        }

        if (parseInt(${thisPage}) === parseInt(parseInt(${lafInfoCount}) / 8) + 1) {
            $('#nextPage').attr('href', 'javascript:;');
        }
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
