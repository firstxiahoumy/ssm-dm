<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title>modifySelfInfo || Directory Management</title>
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
<body>
<%--user主框架--%>
<!-- class="navbar navbar-inverse navbar-fixed-top"></nav> <nav -->
<!-- nav-->
<nav class="navbar navbar-default navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                class="icon-bar"></span><span
                class="icon-bar"></span></button>
        <a class="navbar-brand" href="${pageContext.request.contextPath}/public/index">dm</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li>
                <a href="${pageContext.request.contextPath}/home1">home</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/home2">content</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/public/index">public</a>
            </li>
            <li class="dropdownb ">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">contentList<strong
                        class="caret"></strong></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="${pageContext.request.contextPath}/install" name="dTag" aria-valuetext="${dTag}"
                           aria-placeholder="install">install</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/compress" name="dTag" aria-valuetext="${dTag}"
                           aria-placeholder="compress">compress</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/media" name="dTag" aria-valuetext="${dTag}"
                           aria-placeholder="media">media</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/directory" name="dTag" aria-valuetext="${dTag}"
                           aria-placeholder="directory">directory</a>
                    </li>
                </ul>
            </li>
        </ul>
        <form action="${pageContext.request.contextPath}/select" class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control" name="" id=""/>
            </div>
            <button type="submit" class="btn btn-default">search</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="#">setting</a>
            </li>
            <li class="dropdown active">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${user.uEmail}<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="${pageContext.request.contextPath}/public/about">about</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/oneself" name="uEmail" aria-valuetext="${uEmail}"
                           aria-placeholder="get.session()">oneself</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/toLogin">use other</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/logout" aria-valuetext="${uEmail}"
                           aria-placeholder="get.session()">logout</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/exit">exit</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>

</nav>
<!-- context -->
<div class="container">

    <div class="row">
        <div class="col-md-6 column">
            <h1>
                <b>修改个人信息</b>
            </h1>
        </div>
        <div class="col-md-6 column">
            <a class="btn btn-primary " href="${pageContext.request.contextPath}/retIn" style="float: right">返回</a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <h2>
                温馨提示
            </h2>
            <ol>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ol>
        </div>
        <div class="col-md-8 column">
            <form action="${pageContext.request.contextPath}/modifySelfInfo" method="post">
                <input type="hidden" name="uId" value="${user.uId}">
                <%--        uId, uEmail, uPwd, uTel, uName, uNum, uAge, uSex, uAvatar, uAdd, uTime--%>
                <div class="form-group">
                    <label>邮箱:</label>
                    <input type="email" name="uEmail" value="${user.uEmail}" class="form-control" readonly>
                </div>
                <div class="form-group">
                    <label>密码:</label>
                    <input type="password" name="uPwd" value="${user.uPwd}" class="form-control" required data-eye>
                </div>
                <div class="form-group">
                    <label>电话:</label>
                    <input type="tel" name="uTel" value="${user.uTel}" class="form-control">
                </div>
                <div class="form-group">
                    <label>姓名:</label>
                    <input type="text" name="uName" value="${user.uName}" class="form-control" >
                </div>
                <div class="form-group">
                    <label>证件号：</label>
                    <input type="number" name="uNum" value="${user.uNum}" class="form-control">
                </div>
                <div class="form-group">
                    <label>年龄：</label>
                    <input type="text" name="uAge" value="${user.uAge}" class="form-control">
                </div>
                <div class="form-group">
                    <label>性别：</label>
                    <input type="text" name="uSex" value="${user.uSex}" class="form-control">
                </div>
                <div class="form-group">
                    <label>地址：</label>
                    <input type="text" name="uAdd" value="${user.uAdd}" class="form-control" required>
                </div>
                <%--        <div class="form-group">--%>
                <%--            <label></label>--%>
                <%--            <input type="" name="" value="${user.}" class="form-control" required>--%>
                <%--        </div>--%>

                <div class="form-group">
                    <input type="submit" value="修改" class="form-control btn-primary btn-default">
                </div>
            </form>
        </div>
    </div>


</div>
<!-- footer -->
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
<script type="text/javascript">
    //密码的显示与隐藏
    $(function() {
        $("input[type='password'][data-eye]").each(function(i) {
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
                id: 'passeye-toggle-'+i,
                style: 'position:absolute;right:10px;top:50%;transform:translate(0,-50%);padding: 2px 7px;font-size:12px;cursor:pointer;'
            }));
            /*添加隐藏 input 用于接收值存入value=""*/
            $this.after($("<input/>", {
                type: 'hidden',
                id: 'passeye-' + i
            }));
            /*接收键盘输入的值用于存入value=""*/
            $this.on("keyup paste", function() {
                $("#passeye-"+i).val($(this).val());
            });
            /*点击时间事件*/
            $("#passeye-toggle-"+i).on("click", function() {
                if($this.hasClass("show")) {
                    $this.attr('type', 'password');
                    $this.removeClass("show");
                    $(this).removeClass("btn-outline-primary");
                }else{
                    $this.attr('type', 'text');
                    $this.val($("#passeye-"+i).val());
                    $this.addClass("show");
                    $(this).addClass("btn-outline-primary");
                }
            });
        });
    });
</script>
</body>
</html>
