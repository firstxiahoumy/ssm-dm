<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="../../../favicon.ico">
    <!--  -->
    <title>login || Directory Management</title>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="../../../bootstrap/dist/css/bootstrap.min.css" type="text/css">
    <!-- 引入 bootstrap js文件 -->
    <script href="../../../bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 自己定义css -->
    <link rel="stylesheet" href="../../../css/admin/" type="text/css">
    <!-- 自定义js -->
    <script src="../../../js/admin/" type="text/javascript"></script>
    <!-- jquery -->
    <script src="../../../jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <!-- 网络文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

    <style type="text/css">
        /*
         * Footer
         */

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
<body style="background: #C0A16B;">
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <!-- <button type="button">返回</button> -->
                    <button type="button" class="btn btn-default btn-primary"><a href="${pageContext.request.contextPath}/public/back" style="color: #111111;">返回首页</a></button>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-5 column">
                    <h2 style="margin: 110px 0 50px ;">
                        <p><span>用户登录</span></p>
                    </h2>
                    <form action="${pageContext.request.contextPath}/login" role="form" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address:</label>
                            <span style="margin-right: 10px ;float: right;"><em>没有账号请点击这里</em> &nbsp <b><a href="${pageContext.request.contextPath}/toRegister">register</a></b></span>
                            <input type="email" class="form-control" id="exampleInputEmail1"  style="background-color: #aaa999; color: #000000;"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password:</label>
                            <span style="margin-right: 10px ;float: right;"><em>password</em> &nbsp <b><a href="${pageContext.request.contextPath}/toForgot">forgot</a></b></span>
                            <input type="password" class="form-control" id="exampleInputPassword1"  style="background-color: #aaa999; color: #000000;"/>

                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">Check code</label>
                            <input type="text" id="exampleInputFile"  style="background-color: #aaa999; color: #000000;"/>

                        </div>
                        <div class="form-group">

                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" />Check me out</label>
                        </div> <button type="submit" class="btn btn-default btn-primary">登录</button>
                    </form>
                </div>
                <div class="col-md-7 column">
                    <div id="" style="margin-top: 110px;">
                        <img alt="back img" src="../../../img/user-login-back.jpg" width="100%" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<div style="margin-bottom: 125px;"></div>
<footer class="blog-footer">
    <p>More template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a
            href="https://twitter.com/mdo">@mdo</a>.</p>

    <div class="inner">
        <p>Copyright &copy; 2020. <a href="http://dm.net">dm.net</a> All rights reserved.</p>
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