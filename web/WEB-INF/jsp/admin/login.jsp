<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title>login || Directory Management</title>

    <!-- jquery -->
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap js文件 -->
    <script href="${pageContext.request.contextPath}/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.min.css" type="text/css">

    <!-- 自己定义css -->
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/" type="text/css">--%>
    <!-- 自定义js -->
<%--    <script src="${pageContext.request.contextPath}/js/admin/" type="text/javascript"></script>--%>
        <!-- 网络文件 -->
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>


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
<body style="background: #9ACFEA;">

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button type="button" class="btn btn-default btn-primary"><a
                    href="${pageContext.request.contextPath}/public/back" style="color: #000000">返回</a></button>
            <div style="margin-bottom: 120px;">

            </div>
            <div class="row clearfix">
                <div class="col-md-3 column">
                    <div style="margin: 22px 15px 0 0;">
                        <p>
                            <em>Git</em> 是一个分布式的版本控制系统，最初由 <strong>Linus Torvalds</strong>
                            编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在 <small>Ruby</small> 社区中。
                        </p>
                        <address>
                            <strong>github、gitee</strong>
                            <br/>
                            <a href="https://github.com/firstxiahoumy/ssm-dm">https://github.com</a>
                            <br/>
                            <a href="https://gitee.com/summer_hou/ssm">https://gitee.com</a>
                            <br/>
                            <span>email</span>
                            <abbr title="email"></abbr>onexiahoumy@outlook.com
                        </address>

                        <a href="${pageContext.request.contextPath}/admin/toRegister" style="color: #111111;">
                            <button type="button" class="btn btn-default btn-block btn-primary">注册</button>
                        </a>
                        <a href="${pageContext.request.contextPath}/admin/toForgot" style="color: #111111;">
                            <button type="button" class="btn btn-default btn-block btn-primary">找回</button>
                        </a>
                    </div>

                </div>
                <div class="col-md-6 column">
                    <h2 style="margin-bottom: 40px; text-align: center;"><span>用户登录</span></h2>
                    <form action="${pageContext.request.contextPath}/admin/login" class="form-horizontal" role="form"
                          method="post">
                        <div class="form-group">
                            <label for="inputEmail" class="col-sm-2 control-label">Email:</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputEmail" name="emial" value="${email}"
                                       style="background-color: #aaa999; color: #000000;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-2 control-label">Pwd:</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword" name="pwd" value="${pwd}"
                                       style="background-color: #aaa999; color: #000000;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="chkCode" class="col-sm-2 control-label">chkCode:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="chkCode"
                                       style="background-color: #aaa999; color: #000000;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="checkbox"/>Remember me</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default btn-primary">登录</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-3 column">
                    <div style="margin-left: 70px;">
                        <h3><span>技术简述</span></h3>
                        <ul class="unstyled">
                            <li>ssm框架</li>
                            <li>bootstrap</li>
                            <li>spring</li>
                            <li>jquery</li>
                            <li>javascript</li>
                            <li>springMVC</li>
                            <li>mybatis</li>
                            <li>mysql</li>
                        </ul>

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<div style="margin-top: 180px;"></div>
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