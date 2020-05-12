<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/12
  Time: 4:53 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<div class="hd">
    <div class="avatar">
        <img src="<%=path%>/upload/${sessionScope.user.avatar}" alt="">
    </div>
    <div class="user-primary">
        <p class="username">${sessionScope.user.username}</p>
        <c:if test="${sessionScope.user.role eq 0}">
            <p class="user-role">普通用户</p>
        </c:if>
        <c:if test="${sessionScope.user.role eq 1}">
            <p class="user-role">管理员</p>
        </c:if>
        <c:if test="${sessionScope.user.role eq 2}">
            <p class="user-role">超级管理员</p>
        </c:if>
    </div>
</div>
