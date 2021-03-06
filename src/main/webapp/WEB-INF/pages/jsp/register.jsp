<%--
  Created by IntelliJ IDEA.
  User: liguangshuai
  Date: 2020/5/11
  Time: 2:11 下午
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
    <title>注册</title>
    <link href="<%=path%>/css/base.css" rel="stylesheet">
    <link href="<%=path%>/css/common.css" rel="stylesheet">
    <link href="<%=path%>/css/register.css" rel="stylesheet">
</head>
<body>

<!--Header Start-->
<jsp:include page="header.jsp"/>
<!--Header End-->


<!--Register Form Start-->

<div class="register-box">
    <div class="register-form">
        <form action="<%=path%>/user/register" method="post" class="">
            <div class="form-item">
                <i class="iconfont icon">&#xe773;</i>
                <input id="username" name="username" placeholder="请输入用户名" type="text">
            </div>
            <div class="form-item">
                <i class="iconfont icon">&#xe75b;</i>
                <input id="password" name="password" placeholder="请输入密码" type="password">
            </div>
            <div class="form-item">
                <i class="iconfont icon">&#xe75b;</i>
                <input id="againPassword" placeholder="请确认密码" type="password">
            </div>
            <div class="form-item">
                <i class="iconfont icon">&#xe74f;</i>
                <input id="email" name="email" placeholder="请输入邮箱" type="text">
            </div>
            <div class="form-item">
                <i class="iconfont icon">&#xe75f;</i>
                <input class="checkCode" id="checkCode" placeholder="请输入验证码" type="text">
                <canvas height="30px" id="canvas" width="100px"></canvas>
            </div>
            <div class="form-item">
                <button id="register" type="submit">注册</button>
                <button type="reset">重置</button>
            </div>
        </form>
        <div class="agreement">
			<textarea readonly>感谢您申请商标圈账户！在成为商标圈用户之前，请您仔细阅读以下条文，确保您理解并同意本协议全部内容。商标圈平台是由杭州名商网络有限公司（名商网）运营的商标转让的综合平台，域名为shangbiao.com。以下内容将构成您和杭州名商网络有限公司之间的服务合同条款。
一、用户注册
您同意本协议并注册成功即成为商标圈的注册用户直至您的账户注销。商标圈可能在必要的时候对本协议条款及商标圈各单项服务协议进行更改，此种更改在商标圈上公布或在具体服务过程中经双方以口头、书面等形式协商一致生效。您可以选择停止使用商标圈相关的服务或者注销您在商标圈的账户，否则商标圈将认为您同意更改后的服务条款。未在商标圈发布或在具体服务过程中未经商标圈告知的服务条款将不具有法律效力，除非签有书面协议，并且仅对签署协议的当事人有效。
二、用户账户
您应当拥有中华人民共和国法律认可的完全民事权利能力和完全民事行为能力，否则您和能够代表您行使权利或承担责任的其他主体将承担一切后果。为此，您应当提供相应的证明。如果您是自然人，此类证明可以是您的居民身份证件、个人户营业执照。如果您是法人，此类证明可以是您的营业执照。如果您是其他组织类型，您应当提供相应的合法证明。
如果使用商标圈提供的各单项服务，您可能还需要提交其他相关的资料和信息。为了提供更好的服务，您也可以向我们提供其他资料和信息，我们将按照商标圈的隐私政策保护您的资料和信息。
您应当保护好您的账户，除非已经得到您的提前通知，商标圈将认为您的账户处于您的控制之下。如果您的账户在不受您控制的情况下处于风险状态或者已经发生损失，请您及时以有效方式通知商标圈，您可以要求商标圈暂停服务或者冻结账户。
如果您使用商标圈账户直接访问其他网站，您应当遵守该网站的服务条款。
三、账户管理
1、商标圈帐号的所有权归商标圈所有，用户完成申请注册手续后，获得商标圈帐号的使用权，该使用权仅属于初始申请注册人，禁止赠与、借用、租用、转让或售卖。商标圈因经营需要，有权回收用户的商标圈帐号。
2、用户可以更改、删除商标圈帐户上的个人资料、注册信息及传送内容等，但需注意，删除有关信息的同时也会删除用户储存在系统中的文字和图片。用户需承担该风险。
3、用户有责任妥善保管注册帐号信息及帐号密码的安全，因用户保管不善可能导致遭受盗号或密码失窃，责任由用户自行承担。用户需要对注册帐号以及密码下的行为承担法律责任。用户同意在任何情况下不使用其他用户的帐号或密码。在用户怀疑他人使用其帐号或密码时，用户同意立即通知商标圈。
4、用户应遵守本协议的各项条款，正确、适当地使用本服务，如因用户违反本协议中的任何条款，商标圈在通知用户后有权依据协议中断或终止对违约用户商标圈帐号提供服务。同时，商标圈保留在任何时候收回商标圈帐号、用户名的权利。
5、如用户注册商标圈帐号后一年不登录，通知用户后，商标圈可以收回该帐号，以免造成资源浪费，由此造成的不利后果由用户自行承担。
四、用户责任
用户使用商标圈必须遵守所有适用的国家法律、地方法规和国际准则。用户对用户账户进行的一切操作及言论负完全的责任，用户注销账户后，仍然应当对注销前的操作和言论负责。
用户必须遵循：
（1）从中国境内向外传输技术性资料时必须符合中国有关法规。
（2）使用网络服务不作非法用途
（3）不干扰或混乱网络服务
（4）遵守所有使用网络服务的网络协议、规定、程序和惯例。
用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽等信息资料。用户也不能传输任何教唆他人构成犯罪行为的资料。不得进行任何有可能对商标圈的系统造成任何不良的影响的操作，不能传输助长国内不利条件和涉及国家安全的资料。不能传输任何不符合当地法规、国家法律和国际准则的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上提到的服务条款，商标圈单方面有权冻结或注销用户账户。用户需对用户本身在网上的行为承担法律责任。用户若在商标圈上散布和传播反动、色情或其他违反国家法律的信息，商标圈的系统记录有可能作为用户违反法律的证据。
五、数据储存
1、商标圈不对用户在本服务中相关数据的删除或储存失败负责。
2、商标圈可以根据实际情况自行决定用户在本服务中数据的最长储存期限，并在服务器上为其分配数据最大存储空间等。用户可根据自己的需要自行备份本服务中的相关数据。
3、如用户停止使用本服务或本服务终止，商标圈可以从服务器上永久地删除用户的数据。本服务停止、终止后商标圈没有义务向用户返还任何数据。
六、风险承担
1、用户理解并同意，商标圈仅为用户提供信息分享、传送及获取的平台，用户必须为自己注册帐号下的一切行为负责，包括用户所传送的任何内容以及由此产生的任何后果。用户应对商标圈及本服务中的内容自行加以判断，并承担因使用内容而引起的所有风险，包括因对内容的正确性、完整性或实用性的依赖而产生的风险商标圈无法且不会对因用户行为而导致的任何损失或损害承担责任。
如果用户发现任何人违反本协议约定或以其他不当的方式使用本服务，请立即向商标圈举报或投诉，商标圈将依本协议约定进行处理。
2、用户理解并同意，因业务发展需要，商标圈保留单方面对本服务的全部或部分服务内容变更、暂停、终止或撤销的权利，用户需承担此风险。
七、商标圈服务
商标圈为用户提供商标交易、商标论坛等相关服务各项服务。用户应当按照商标圈的服务规则和页面提示进行操作，也可以直接联系商标圈获取更多的服务。商标圈各单项服务协议与本协议冲突或是有特别规定的，应当优先适用各单项服务协议。
商标圈的各项服务费用在商标圈上公布，商标圈有权根据有关政策的变化、市场情况、服务范围变化等原因，单方面调整价格标准，调整的项目将在商标圈上更新，不作额外的通知。商标圈有权拒绝为不按照商标圈要求提供信息或不服从商标圈服务规则的用户提供服务，有权注销或者冻结该用户账户。
用户有权取回用户在商标圈账户中未使用的资金，但不得利用商标圈资金账户套现信用卡资金，不得有其他违反银行、支付中介机构及商标圈资金规范的行为。用户在商标圈账户消费的的订单将提供明细以供查询的资金不产生任何形式的孳息。
商标圈的数据来源于互联网，版权归源网站所有，平台通过技术手段对信息进行汇总实现快照，无法避免后续网站内容的变更，汇总的数据如有出入本站不承担责任。
商标圈没有为用户保存账户各项资料和记录的义务。
八、商标圈免责条款
商标圈不保证提供的服务不受干扰、及时提供或免于出错。商标圈不保证所交易的商标具有适销性、适用性，也不能保证交易方实际拥有该商标。商标圈不对用户的真实身份进行核实。除非有效法律文书明确要求并提供相应保护，商标圈将遵守隐私政策，不对外提供用户信息。
因下列情形无法按照约定提供各项服务时，商标圈不承担责任，包括但不限于：
（1）商标圈公告的休假或者系统维护的。
（2）电信设备出现故障不能进行数据传输的。
（3）因台风、地震、海啸、洪水、停电、战争、恐怖袭击等不可抗力之因素，造成商标圈障碍不能提供服务的。
（4）由于黑客攻击、电信部门技术调整或故障、网站升级、银行方面的问题等原因而造成的服务中断或者延迟的。
九、知识产权保护
用户不得擅自在全球任何国家和地区申请与商标圈及其他服务的名称、标识、品牌、特色标志、域名相同或类似的商标、服务商标、域名、著作权等。用户不得擅自使用、复制、修改、改编、翻译、汇编、转载、发行商标圈所有内容，包括但不限于文字作品、图片作品、摄影作品、示意图、网站架构、网站画面的安排、网页设计。
十、隐私政策
商标圈隐私政策构成本协议的有效内容。隐私政策调整的，适用最新的隐私政策。
十一、法律适用和管辖
本协议及其他单项服务协议适用中华人民共和国法律，法律没有明文规定的，按照商标圈的服务和交易惯例解释。协议的部分条款发生无效的情形，不受影响的其他条款和协议仍然有效。因本协议及其他单项服务协议产生的争议，浙江省杭州市拱墅区人民法院为有权管辖法院。
十二、其他
工作日是指商标圈的营业日。除非商标圈公告通知休假，一般为中华人民共和国适用的休息日以及法定节假日之外的正常工作日。日期的计算使用公历年月日，时间的计算使用北京时间。
商标圈通过公告通知，公告的时间为送达到用户的时间；通过商标圈网页向用户提醒，提醒出现的时间为送达的时间；通过用户提供的联系方式向用户送达，用户或其代表签收、用户系统接收的时间为送达的时间。</textarea>
            <div class="form-item">
                <label for="agreementCheckBox">勾选并同意《用户注册协议》</label>
                <input id="agreementCheckBox" type="checkbox">
            </div>
        </div>
    </div>

    <div class="alert">
        A simple primary alert—check it out!
    </div>
</div>
<!--Register Form End-->

<script src="<%=path%>/js/jquery-3.5.0.min.js"></script>
<script src="<%=path%>/js/common.js"></script>
<script>


    $(() => {
        let checkCode = [];
        drawCheckCode(checkCode);

        $('#canvas').on('click', () => {
            drawCheckCode(checkCode);
        });

        $('#register').on('click', () => {

            if ($('#username').val() === '') {
                showAlert('请输入用户名！');
                return false;
            }

            <%--$.getJSON("<%=path%>/user/checkUsernameExist", {--%>
            <%--    'username': $('#username').val()--%>
            <%--}, (response) => {--%>
            <%--    if (response.status === false) {--%>
            <%--        showAlert("用户名已存在!")--%>
            <%--        return false;--%>
            <%--    }--%>
            <%--});--%>

            if ($('#password').val() === '') {
                showAlert('请输入密码！');
                return false;
            }
            if ($('#againPassword').val() === '') {
                showAlert('请确认密码！');
                return false;
            }
            if ($('#password').val() != $('#againPassword').val()) {
                showAlert('两次密码输入不一致！');
                return false;
            }
            if ($('#email').val() === '') {
                showAlert('请输入邮箱！');
                return false;
            }

            if (!$('#agreementCheckBox').is(':checked')) {
                showAlert('请勾选并同意《用户注册协议》！');
                return false;
            }

            if ($('#checkCode').val() === '') {
                showAlert('请输入验证码！');
                return false;
            } else if ($('#checkCode').val().toLowerCase() == checkCode.join('')) {
                return true;
            } else {
                showAlert('验证码错误！');
                $('#checkCode').val('');
                return false;
            }


        });

    });
</script>
</body>
</html>