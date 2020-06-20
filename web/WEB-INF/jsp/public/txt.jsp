
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="../../../favicon.ico">
    <!--  -->
    <title>txt || Directory Management</title>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="../../../bootstrap/dist/css/bootstrap.min.css" type="text/css">
    <!-- 引入 bootstrap js文件 -->
    <script href="../../../bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 自己定义css -->
    <link rel="stylesheet" href="../../../css/admin/" type="text/css">
    <!-- 自定义js -->
    <script src="../../../js/admin/"  type="text/javascript"></script>
    <!-- jquery -->
    <script src="../../../jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <!-- 网络问件 -->
    <script src="https://www.jq22.com/jquery/bootstrap-3.3.7.js"></script>
    <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-3.3.7.css">

    <style>
        body {
            padding-top: 50px;
        }

        ul li{
            display: inline;
            padding: 0 12px;
            line-height: 36px;
            font-size: 20px;
        }

        #qmenu{

            text-align: center;
            padding: 15px 20px 5px 10px;
            background: #EEEEEE;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">dm.net services</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Directory Management</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <!-- <li><a href="#contact">Contact</a></li> -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        content
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">document</a></li>
                        <li><a href="#">excel</a></li>
                        <li><a href="#">ppt</a></li>
                        <li><a href="">markdown</a></li>
                        <li><a href="#">pdf</a></li>
                        <li><a href="#">link</a></li>
                        <li><a href="#">txt</a></li>
                    </ul>
                </li>
            </ul>
            <!--向左对齐-->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Setting<b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Theme</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Backgound</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Color</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Log in | | Log up<b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <%--                        <li><a href="#">Log in</a></li>--%>
                        <li><a href="#">Log up</a></li>
                        <%--                        <li class="divider"></li>--%>
                        <li><a href="#">Log out</a></li>
                        <li><a href="#">Switch account</a></li>
                        <%--                        <li class="divider"></li>--%>
                        <li><a href="#">Exit</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div id="qmenu">
    <ul class="inline unstyled form-inline ml" style="list-style-type: none;">
        <li><a href="">新闻资讯</a></li>
        <li><a href="">体育竞技</a></li>
        <li><a href="">娱乐八卦</a></li>
        <li><a href="">前沿科技</a></li>
        <li><a href="">环球财经</a></li>
        <li><a href="">天气预报</a></li>
        <li><a href="">房产家居</a></li>
        <li><a href="">网络游戏</a></li>
        <li><a href="">金融咨询</a></li>
        <li><a href="">娱乐周边</a></li>
    </ul>

</div>
<footer class="blog-footer">
    <p>More template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a
            href="https://twitter.com/mdo">@mdo</a>.</p>

    <div class="inner">
        <p>Copyright &copy; 2020. <a href="http://dm.net">DM.net</a> All rights reserved.</p>
    </div>
    <p>Quick navigation || Friendship connection <a href="http://ningci.com">ningci.com</a></p>
    <p>Feedback email <em> <b> onexiahoumy@outlook.com </b> </em> or QQmail<em> <b> aliketh.my@foxmail.com </b> </em>
    </p>
    <p>Program source code <em> gitee </em><a href="https://gitee.com/summer_hou/ssm">
        https://gitee.com/summer_hou/ssm </a>or<em> github </em><a href="https://github.com/firstxiahoumy/ssm-dm">
        https://github.com/firstxiahoumy/ssm-dm </a></p>
    <p><a href="#">Back to top</a></p>
</footer>
</body>
</html>