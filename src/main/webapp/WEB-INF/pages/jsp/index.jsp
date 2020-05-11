<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:19 下午
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
    <title>失物招领系统</title>
    <link href="<%=path%>/css/base.css" rel="stylesheet">
    <link href="<%=path%>/css/common.css" rel="stylesheet">
    <link href="<%=path%>/css/index.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->


<!--Notification Start-->

<div class="main">
    <c:forEach items="{1,2,3,4,5,6,7,8}" step="1">
        <div class="notification clearfix">
            <div class="notification-title">
                <h4>系统通知</h4>
            </div>
            <div class="notification-body">
                <div class="notification-img">
                    <img alt="" src="<%=path%>/upload/avatar.jpg">
                </div>
                <div class="notification-content">
                    <p class="text">通知系统该如何设计，才能减少或者避免掉用户的反感，获得较好的效果呢？ 在网站和手机上，通知无处不在。通知的设计目的原本是为了提升我们产品的用户体验和一般可用...</p>
                    <span class="release-time">发布时间:2020-9-2</span>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<!--Notification End-->


<!--Footer Start-->
<footer>
    <p class="footer-projectname">江苏师范大学失物招领系统</p>
    <p class="footer-beian"><a href="http://www.miitbeian.gov.cn" target="_blank">苏ICP备19055214号-1</a></p>
</footer>

<!--Footer End-->

<script crossorigin="anonymous"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js"></script>
<script src="<%=path%>/js/common.js"></script>
<script>

    window.onload = () => {
        navDropDown();
    }
</script>
</body>
</html>