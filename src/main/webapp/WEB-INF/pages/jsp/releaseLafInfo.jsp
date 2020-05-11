<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:13 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ch-ZN">
<head>
    <meta charset="UTF-8">
    <title>发布新信息</title>
    <link rel="stylesheet" href="css/base.css">
    <link href="css/common.css" rel="stylesheet">
    <link href="css/releaseInformation.css" rel="stylesheet">
</head>
<body>
<!--Header Start-->
<div class="header">
    <a class="header-brand" href="#">失物招领系统</a>
    <div class="nav left">
        <ul>
            <li class="nav-item"><a href="#">首页</a></li>
            <li class="nav-item"><a href="#">失物招领信息</a></li>
            <li class="nav-item"><a href="#">发布新信息</a></li>
        </ul>
    </div>

    <ul class="nav-user right">
        <!--已登录时显示-->
        <li class="nav-item user-info">
            <a href="#"><img alt="Double" class="user-avatar" src="img/avatar.jpg"><span class="user-name">Double</span></a>
            <div class="dropdown" id="user-dropdown">
                <a class="dropdown-item" href="">个人中心</a>
                <a class="dropdown-item" href="">我的发布</a>
                <a class="dropdown-item" href="">退出登录</a>
            </div>
        </li>
        <!--未登录时显示-->
        <!--		<li class="nav-item"><a href="#">注册</a></li>
                <li class="nav-item"><a href="#">登录</a></li>-->
    </ul>
</div>
<!--Header End-->


<!--Information Form Start-->
<div class="form-box">
    <form action="" class="form">
        <div class="form-group">
            <label for="title">标题</label>
            <input class="form-item" id="title" placeholder="请输入标题" type="text">
        </div>
        <div class="form-group">
            <label for="lost">遗失</label>
            <input class="" id="lost" name="infoType" type="radio">
            <label for="find">捡到</label>
            <input class="" id="find" name="infoType" type="radio">
        </div>
        <div class="form-group">
            <label for="lostTime">遗失时间</label>
            <input class="form-item" id="lostTime" name="lostTime" placeholder="请输入遗失时间" type="text">
        </div>
        <div class="form-group">
            <label for="lostLocation">遗失地点</label>
            <input class="form-item" id="lostLocation" name="lostLocation" placeholder="请输入遗失地点" type="text">
        </div>
        <div class="form-group">
            <label for="summary">物品描述</label>
            <textarea class="" id="summary" name="summary" placeholder="请输入描述信息"></textarea>
        </div>
        <div class="form-group">
            <label for="img">物品图片</label>
            <input class="form-item" id="img" name="lostLocation" type="file">
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
<script src="js/common.js"></script>
<script>
    $(()=>{
        let checkCode = [];
        drawCheckCode(checkCode)
        $('#releaseBtn').on('click', ()=>{
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

        $('#canvas').on('click', ()=>{
            drawCheckCode(checkCode);
        });
    });
</script>
</body>
</html>