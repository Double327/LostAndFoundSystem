function drawCheckCode(checkCode) {
    let canvasWidth = $('#canvas').width();
    let canvasHeight = $('#canvas').height();
    let canvas = document.getElementById("canvas");//获取到canvas的对象，演员
    let context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
    canvas.width = canvasWidth;
    canvas.height = canvasHeight;
    let sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
    let aCode = sCode.split(',');
    let aLength = aCode.length;
    for (let i = 0; i < 4; i++) {
        let j = Math.floor(Math.random() * aLength);
        let deg = Math.random() - 0.5; //产生一个随机弧度
        let txt = aCode[j];//得到随机的一个内容
        checkCode[i] = txt.toLowerCase();
        let x = 10 + i * 20;//文字在canvas上的x坐标
        let y = 20 + Math.random() * 8;//文字在canvas上的y坐标
        context.font = "bold 23px 微软雅黑";
        context.translate(x, y);
        context.rotate(deg);
        context.fillStyle = randomColor();
        context.fillText(txt, 0, 0);
        context.rotate(-deg);
        context.translate(-x, -y);
    }
    for (let i = 0; i <= 5; i++) { //验证码上显示线条
        context.strokeStyle = randomColor();
        context.beginPath();
        context.moveTo(Math.random() * canvasWidth, Math.random() * canvasHeight);
        context.lineTo(Math.random() * canvasWidth, Math.random() * canvasHeight);
        context.stroke();
    }
    for (let i = 0; i <= 30; i++) { //验证码上显示小点
        context.strokeStyle = randomColor();
        context.beginPath();
        let x = Math.random() * canvasWidth;
        let y = Math.random() * canvasHeight;
        context.moveTo(x, y);
        context.lineTo(x + 1, y + 1);
        context.stroke();
    }
}

function randomColor() {
    let r = Math.floor(Math.random() * 256);
    let g = Math.floor(Math.random() * 256);
    let b = Math.floor(Math.random() * 256);
    return "rgb(" + r + "," + g + "," + b + ")";
}


function showAlert(msg) {
    let myAlert = $('.alert');
    myAlert.text(msg);
    myAlert.fadeIn();
    setTimeout(() => {
        myAlert.fadeOut();
    }, 3000);
}

function navDropDown() {
    let dropdown = $("#user-dropdown");
    let userinfo = $(".user-info");

    userinfo.on('mouseenter', () => {
        $('#user-dropdown').css('display', 'block');
    });

    userinfo.on('mouseleave', () => {
        $('#user-dropdown').css('display', 'none');
    });

    dropdown.on('mouseenter', () => {
        $('#user-dropdown').css('display', 'block');
    });

    dropdown.on('mouseleave', () => {
        $('#user-dropdown').css('display', 'none');
    });
}

function deleteElement(id) {
    let idSelector = '#' + id;
    $(idSelector).remove();
}