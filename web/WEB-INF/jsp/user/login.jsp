<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%--

    String path = request.getContextPath();

    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()

            + path + "/";

--%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title>LOGIN || Directory Management</title>
    <!-- jquery -->
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap js文件 -->
    <script src="${pageContext.request.contextPath}/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.min.css"
          type="text/css">

    <!-- 自己定义css -->
    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/" type="text/css">--%>
    <!-- 自定义js -->
    <%--    <script src="${pageContext.request.contextPath}/js/admin/" type="text/javascript"></script>--%>

    <!-- 网络文件 -->
    <%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">--%>
    <%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>

    <style>
        body {
            font-family: Georgia, "Times New Roman", Times, serif;
            color: #555;
        }

        h1, .h1,
        h2, .h2,
        h3, .h3,
        h4, .h4,
        h5, .h5,
        h6, .h6 {
            margin-top: 0;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-weight: normal;
            color: #333;
        }


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
                    <button type="button" class="btn btn-default btn-primary"><a
                            href="${pageContext.request.contextPath}/public/back" style="color: #111111;">返回首页</a>
                    </button>
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
                            <span style="margin-right: 10px ;float: right;"><em>没有账号请点击这里</em> &nbsp <b><a
                                    href="${pageContext.request.contextPath}/toRegister">register</a></b></span>
                            <input type="email" class="form-control" id="exampleInputEmail1" name="uEmail"
                                   value="${uEmail}" style="background-color: #aaa999; color: #000000;"/>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password:</label>
                            <span style="margin-right: 10px ;float: right;"><em>password</em> &nbsp <b><a
                                    href="${pageContext.request.contextPath}/toForgot">forgot</a></b></span>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="uPwd"
                                   value="${uPwd}" style="background-color: #aaa999; color: #000000;" required
                                   data-eye/>

                        </div>

                        <div class="form-group">
                            <label for="checkCode">Check code:</label>
                            <span style="margin-right: 10px ;float: right;"><em><b>看不清，点击图片换一张 </b></em> &nbsp;</span>

                            <br>
                            <input type="text" placeholder="请输入验证码..." maxlength="4" autocomplete="off"
                                   class="" id="checkCode" name="code" style="width: 77% ;  height: 34px;padding: 6px 12px;
                                   font-size: 14px;line-height: 1.42857143;color: #555;background-color: #fff;
                                   background-image: none;border: 1px solid #ccc;border-radius: 4px;">
                            <img src="${pageContext.request.contextPath}/code" class="" onclick="changeNewOne($(this));"
                                 style="width: 100px ;height: 34px;"/>

                        </div>

                        <div class="form-group">

                        </div>
                        <%--                        <div class="checkbox">--%>
                        <%--                            <label><input type="checkbox" />Check me out</label>--%>
                        <%--                        </div>--%>
                        <div>
                            <button type="submit" class="btn btn-default btn-primary">登录</button>
                            <span style="color: red">${msg} &nbsp; ${err}</span></div>

                    </form>
                </div>

                <div class="col-md-7 column">
                    <div id="" style="margin-top: 110px;">
                        <img alt="back img" src="${pageContext.request.contextPath}/img/user-login-back.jpg"
                             width="100%"/>
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
<script type="text/javascript">
    // 验证码
    function changeNewOne(obj) {
        obj.attr("src", "${pageContext.request.contextPath}/code?d=" + new Date().getTime());
    }

</script>
<script type="text/javascript">
    //密码的显示与隐藏
    $(function () {
        $("input[type='password'][data-eye]").each(function (i) {
            let $this = $(this);
            /*在div下添加位置样式 【$("<div/>"】*/
            $this.wrap($("<div/>", {
                style: 'position:relative'
            }));
            /*设置input的padding样式*/
            $this.css({
                paddingRight: 60
            });
            /*添加div标签并设置 【$("<div/>"】*/
            $this.after($("<div/>", {
                html: 'Show',
                class: 'btn btn-primary btn-sm',
                id: 'passeye-toggle-' + i,
                style: 'position:absolute;right:10px;top:50%;transform:translate(0,-50%);padding: 2px 7px;font-size:12px;cursor:pointer;'
            }));
            /*添加隐藏 input 用于接收值存入value=""*/
            $this.after($("<input/>", {
                type: 'hidden',
                id: 'passeye-' + i
            }));
            /*接收键盘输入的值用于存入value=""*/
            $this.on("keyup paste", function () {
                $("#passeye-" + i).val($(this).val());
            });
            /*点击时间事件*/
            $("#passeye-toggle-" + i).on("click", function () {
                if ($this.hasClass("show")) {
                    $this.attr('type', 'password');
                    $this.removeClass("show");
                    $(this).removeClass("btn-outline-primary");
                } else {
                    $this.attr('type', 'text');
                    $this.val($("#passeye-" + i).val());
                    $this.addClass("show");
                    $(this).addClass("btn-outline-primary");
                }
            });
        });
    });
</script>
</body>
</html>