<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="/favicon.ico">
    <!--  -->
    <title> || Directory Management</title>
    <!-- jquery -->
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap js文件 -->
    <script src="${pageContext.request.contextPath}/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.min.css" type="text/css">


    <!-- 自己定义css -->
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/" type="text/css">--%>
    <!-- 自定义js -->
<%--    <script src="${pageContext.request.contextPath}/js/admin/"  type="text/javascript"></script>--%>

    <!-- 网络文件 -->
    <%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">--%>
    <%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>

    <style>
        body {
            padding-top: 50px;
        }

        .bqul .bqli{
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
        /*footer*/
        .blog-footer {
            padding: 40px 0;
            color: #999;
            text-align: center;
            background-color: #1f2d3d;
            border-top: 1px solid #e5e5e5;
        }

        .blog-footer p:last-child {
            margin-bottom: 0;
        }

        .blog-nav-float {
            float: right;
        }
    </style>
</head>
<body>
<!--nav-->
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
            <a class="navbar-brand" href="${pageContext.request.contextPath}/public/index">Directory Management</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="${pageContext.request.contextPath}/public/home">Home</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/public/about">About</a></li>
                <li><a href="${pageContext.request.contextPath}/welcome">oneself</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        content
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/public/document">document</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/excel">excel</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/ppt">ppt</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/markdown">markdown</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/pdf">pdf</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/link">link</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/txt">txt</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/sql">sql</a></li>
                        <li><a href="${pageContext.request.contextPath}/public/media">media</a></li>
                        <%--                        <li><a href="#">mp3</a></li>--%>
                        <li><a href="${pageContext.request.contextPath}/public/psd">psd</a></li>
                        <%--                        <li><a href="#">txt</a></li>--%>
                        <%--                        <li><a href="#">txt</a></li>--%>
                        <%--                        <li><a href="#">txt</a></li>--%>
                        <%--                        <li><a href="#">txt</a></li>--%>
                        <%--                        <li><a href="#">txt</a></li>--%>
                    </ul>
                </li>
            </ul>
            <!--向右对齐-->
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
<!--context-->
<div id="qmenu">
    <ul class="inline unstyled form-inline bqul"  style="list-style-type: none;">
        <li class="bqli"><a href="${pageContext.request.contextPath}/">新闻资讯</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">体育竞技</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">娱乐八卦</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">前沿科技</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">环球财经</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">天气预报</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">房产家居</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">网络游戏</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">金融咨询</a></li>
        <li class="bqli"><a href="${pageContext.request.contextPath}/">娱乐周边</a></li>
    </ul>

</div>
<!-- footer-->
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
