<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:13 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"  %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta charset="UTF-8">
    <title>发布新信息</title>
    <link href="<%=path%>/css/base.css" rel="stylesheet">
    <link href="<%=path%>/css/common.css" rel="stylesheet">
    <link href="<%=path%>/css/releaseInformation.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<jsp:include page="header.jsp"/>

<!--Header End-->


<!--Information Form Start-->
<div class="form-box">
    <form action="<%=path%>/laf/addLafInfo" class="form" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="title">标题</label>
            <input class="form-item" id="title" name="title" placeholder="请输入标题" type="text">
        </div>
        <div class="form-group">
            <label for="lost">遗失</label>
            <input class="" id="lost" name="type" type="radio" value="1">
            <label for="find">捡到</label>
            <input class="" id="find" name="type" type="radio" value="2">
        </div>
        <div class="form-group">
            <label for="lostTime">遗失时间</label>
            <input class="form-item" id="lostTime" name="lostTime" placeholder="请输入遗失时间" type="text">
        </div>
        <div class="form-group">
            <label for="lostLocation">遗失地点</label>
            <input class="form-item" id="lostLocation" name="lostPosition" placeholder="请输入遗失地点" type="text">
        </div>
        <div class="form-group">
            <label for="summary">物品描述</label>
            <textarea class="" id="summary" name="summary" placeholder="请输入描述信息"></textarea>
        </div>
        <div class="form-group">
            <label for="img">物品图片</label>
            <input class="form-item" id="img" name="upload" type="file">
        </div>
        <div class="form-group">
            <label for="canvas">验证码</label>
            <input class="checkCode" type="text" id="checkCode">
            <canvas id="canvas" width="100" height="30"></canvas>
        </div>
        <div class="form-group">
            <button type="submit" id="releaseBtn">发布信息</button>
            <button type="reset">重置</button>
        </div>
    </form>
    <div class="alert">
        A simple primary alert—check it out!
    </div>
</div>
<!--Information Form End-->

<!--Footer Start-->


<!--Footer End-->

<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="<%=path%>/js/common.js"></script>
<script>
    $(() => {
        let checkCode = [];
        drawCheckCode(checkCode)
        $('#releaseBtn').on('click', () => {
            if ($('#title').val() === '') {
                showAlert('请输入用户名!');
                return false;
            }
            if (!$('#lost').is(':checked') && !$('#find').is(':checked')) {
                showAlert('请选择信息类型!');
                return false;
            }
            if ($('#lostTime').val() === '') {
                showAlert('请输入丢失时间!');
                return false;
            }
            if ($('#lostLocation').val() === '') {
                showAlert('请输入丢失地址!');
                return false;
            }
            if ($('#summary').val() === '') {
                showAlert('请输入描述信息!');
                return false;
            }
            if ($('#img').val() === '') {
                showAlert('请上传图片!');
                return false;
            }
            if ($('#checkCode').val() === '') {
                showAlert('请输入验证码!');
                return false;
            } else if ($('#checkCode').val().toLowerCase() === checkCode.join('')) {

            } else {
                showAlert('验证码错误!');
                $('#checkCode').val('');
                return false;
            }
        });

        $('#canvas').on('click', () => {
            drawCheckCode(checkCode);
        });
    });
</script>
</body>
</html>