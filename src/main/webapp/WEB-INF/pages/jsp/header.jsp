<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/9
  Time: 6:01 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<div class="header">
    <a class="header-brand" href="#">失物招领系统</a>
    <div class="nav left">
        <ul>
            <li class="nav-item"><a href="<%=path%>/index">首页</a></li>
            <li class="nav-item"><a href="#">失物招领信息</a></li>
            <li class="nav-item"><a href="#">发布新信息</a></li>
        </ul>
    </div>

    <ul class="nav-user right">
        <!--已登录时显示-->
        <c:if test="${!empty sessionScope.user}">
            <li class="nav-item user-info">
                <a href="#"><img alt="Double" class="user-avatar" src="<%=path%>/upload/avatar.jpg"><span
                        class="user-name">${user.username}</span></a>
                <div class="dropdown" id="user-dropdown">
                    <a class="dropdown-item" href="">个人中心</a>
                    <a class="dropdown-item" href="">我的发布</a>
                    <a class="dropdown-item" href="<%=path%>/user/logout">退出登录</a>
                </div>
            </li>
        </c:if>

        <!--未登录时显示-->
        <c:if test="${empty sessionScope.user}">
            <li class="nav-item"><a href="<%=path%>/user/toRegister">注册</a></li>
            <li class="nav-item"><a href="<%=path%>/user/toLogin">登录</a></li>
        </c:if>
    </ul>
</div>