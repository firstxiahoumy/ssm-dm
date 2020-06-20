
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
<body style="background: #9ACFEA;">
<!-- <div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <button class="btn" type="button">返回</button>
            <div class="row-fluid">
                <div class="span3">
                    <h3><span>技术简述</span></h3>
                    <ul class="unstyled">
                        <li>ssm框架</li>
                        <li>bootstrap</li>
                        <li>spring</li>
                        <li>jquery</li>
                        <li>javascript</li>
                        <li>springmvc</li>
                        <li>mybatis</li>
                        <li>mysql</li>
                    </ul>
                </div>
                <div class="span6">
                    <form class="form-horizontal">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">邮箱：</label>
                            <div class="controls">
                                <input id="inputEmail" type="text" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">密码：</label>
                            <div class="controls">
                                <input id="inputPassword" type="password" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="cheakCode">验证码</label>
                            <div class="controls">
                                <input id="cheakCode" type="text" />
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <label class="checkbox"><input type="checkbox" /> Remember me</label> <button type="submit" class="btn">登陆</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="span3">
                    <h3>项目代码</h3>
                    <address>
                        <strong>github、gitee</strong>
                        <br />
                        <a href="https://github.com/firstxiahoumy/ssm-dm">https://github.com</a>
                        <br />
                        <a href="https://gitee.com/summer_hou/ssm">https://gitee.com</a>
                        <br />
                        <abbr title="email"></abbr>onexiahoumy@outlook.com
                    </address>
                    <button class="btn btn-block btn-primary" type="button">注册</button>
                    <button class="btn btn-block btn-primary" type="button">找回</button>
                </div>
            </div>
        </div>
    </div>
</div>
-->
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <button type="button" class="btn btn-default btn-primary"><a href="${pageContext.request.contextPath}/public/back" style="color: #000000">返回</a></button>
            <div style="margin-bottom: 120px;">

            </div>
            <div class="row clearfix">
                <div class="col-md-3 column">
                    <div style="margin: 22px 15px 0 0;">
                        <p>
                            <em>Git</em> 是一个分布式的版本控制系统，最初由 <strong>Linus Torvalds</strong> 编写，用作Linux内核代码的管理。在推出后，Git在其它项目中也取得了很大成功，尤其是在 <small>Ruby</small> 社区中。
                        </p>
                        <address>
                            <strong>github、gitee</strong>
                            <br />
                            <a href="https://github.com/firstxiahoumy/ssm-dm">https://github.com</a>
                            <br />
                            <a href="https://gitee.com/summer_hou/ssm">https://gitee.com</a>
                            <br />
                            <abbr title="email"></abbr>onexiahoumy@outlook.com
                        </address>
                        <button type="button" class="btn btn-default btn-block btn-primary"><a href="${pageContext.request.contextPath}/admin/toRegister" style="color: #111111;">注册</a></button>
                        <button type="button" class="btn btn-default btn-block btn-primary"><a href="${pageContext.request.contextPath}/admin/toForgot" style="color: #111111;">找回</a></button>
                    </div>

                </div>
                <div class="col-md-6 column">
                    <h2 style="margin-bottom: 40px; text-align: center;"><span>用户登录</span></h2>
                    <form action="${pageContext.request.contextPath}/admin/login" class="form-horizontal" role="form" method="post">
                        <div class="form-group">
                            <label for="inputEmail" class="col-sm-2 control-label">Email:</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputEmail" style="background-color: #aaa999; color: #000000;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-2 control-label">Pwd:</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword"  style="background-color: #aaa999; color: #000000;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="chkCode" class="col-sm-2 control-label">chkCode:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="chkCode"  style="background-color: #aaa999; color: #000000;"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label><input type="checkbox" />Remember me</label>
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
                            <li>springmvc</li>
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