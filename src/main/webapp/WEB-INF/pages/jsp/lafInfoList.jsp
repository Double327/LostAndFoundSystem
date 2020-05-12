<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:12 下午
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
    <title>失物招领信息</title>
    <link href="<%=path%>/css/base.css" rel="stylesheet">
    <link href="<%=path%>/css/common.css" rel="stylesheet">
    <link href="<%=path%>/css/lostAndFoundInfo.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->


<!--Main Start-->
<div class="main clearfix">
    <div class="content clearfix">
        <c:forEach items="{1,2,3,4,5,6,7,8,9,10}" step="1">
            <div class="card">
                <div class="card-title">
                    <h3>这是标题</h3>
                </div>
                <div class="card-img">
                    <img alt="" src="<%=path%>/upload/avatar.jpg">
                </div>
                <div class="card-summary">
                    <p>物品描述:<span>黑色皮质钱包，里面有银行卡、身份证等物品，另还有若干现金.</span></p>
                </div>
                <div class="card-footer">
                    <p class="lost-time">丢失时间:<span>2000-11-11</span></p>
                    <p class="lost-location">丢失地点:<span>江苏省徐州市江苏师范大学14号楼</span></p>
                    <p class="author">发布人:<span>Double</span></p>
                    <p class="release-time">发布时间:<span>2000-12-4</span></p>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="paging clearfix">
        <ul class="clearfix">
            <li><a class="page-index" href="">上一页</a></li>
            <li><a class="page-index" href="" class="current-page">1</a></li>
            <li><a class="page-index" href="">2</a></li>
            <li><a class="page-index" href="">3</a></li>
            <li><a class="page-index" href="">4</a></li>
            <li><a class="page-index" href="">5</a></li>
            <li><a class="page-index" href="">6</a></li>
            <li><a class="page-index" href="">下一页</a></li>
        </ul>
    </div>
</div>

<!--Main End-->

<!--Footer Start-->
<footer>
    <div class="container">
        <div class="row">
            <p class="footer-projectname">江苏师范大学失物招领系统</p>
            <p class="footer-beian"><a href="http://www.miitbeian.gov.cn" target="_blank">苏ICP备19055214号-1</a></p>
        </div>
    </div>
</footer>

<!--Footer End-->


<script crossorigin="anonymous"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js"></script>
<script src="<%=path%>/js/common.js"></script>
</body>
</html>