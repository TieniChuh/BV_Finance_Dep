<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/25
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>welcome</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="js/particles_js/style.css">
    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/3.3.7/js/bootstrap.js"></script>
    <link href="bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>

<div class="alert">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-4  " style="height:25px;"> &nbsp; </div>
            <div class="col-xs-4  " style="height:25px;"><p class="fontOne">用户登入（Login）</p></div>
            <div class="col-xs-4  " style="height:25px;"> &nbsp; </div>
        </div>
        <div class="row">
            <div class="col-xs-12  ">
                <form action="<%=request.getContextPath()%>/user/loginSys.do" method="post" id="ntmrbLogin">
                    <br>
                    <div class="row fontTwo">
                        <div class="col-xs-2 col-xs-offset-1">账 号</div>
                        <div class="fontFour col-xs-6"><input type="text" class="form-control" id="userId" name="userId"
                                                              placeholder="user_id"></div>
                    </div>
                    <br>
                    <div class="row fontTwo">
                        <div class="col-xs-2 col-xs-offset-1">密 码</div>
                        <div class="fontFour col-xs-6"><input type="password" class="form-control" id="userPwd"
                                                              name="userPwd" placeholder="user_password"></div>
                    </div>
                    <br>
                    <div class="row fontTwo">
                        <div class="col-xs-3 col-xs-offset-3">
                            <button class="btn btn-primary fontThree" onclick="login()">登 入</button>
                        </div>
                        <div class="col-xs-3">
                            <button class="btn btn-primary fontThree" onclick="clearLoginFields()">重 置</button>
                        </div>
                    </div>
                    <br>
                </form>
            </div>
        </div>
        <br>
        <div class="text-center fontFive">${errorMsg}</div>
    </div>
</div>
<div id="particles-js">

</div>
<script src="js/particles_js/particles.js"></script>
<script src="js/particles_js/app.js"></script>
<script src="js/particles_js/stats.js"></script>
<script>
    var count_particles, stats, update;
    stats = new Stats;
    stats.setMode(0);
    stats.domElement.style.position = 'absolute';
    stats.domElement.style.left = '0px';
    stats.domElement.style.top = '0px';
    document.body.appendChild(stats.domElement);
    count_particles = document.querySelector('.js-count-particles');
    update = function () {
        stats.begin();
        stats.end();
        if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
            count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
        }
        requestAnimationFrame(update);
    };
    requestAnimationFrame(update);
</script>
</body>
</html>
