<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title>oneself || Directory Management</title>
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
<body style="background:gainsboro">
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
            <li class="active">
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
                        <a href="${pageContext.request.contextPath}/install">install</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/compress">compress</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/media">media</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/directory">directory</a>
                    </li>
                </ul>
            </li>
        </ul>
        <form action="${pageContext.request.contextPath}/select" class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control"/>
            </div>
            <button type="submit" class="btn btn-default">search</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="#">setting</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">${user.uEmail}<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="${pageContext.request.contextPath}/public/about">about</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/oneself">oneself</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/toLogin">use other</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/logout">logout</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/exit">exit</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>

</nav>
<!--content-->
<div class="container" style="line-height: 1.5em;">
    <div class="row">
        <a href="${pageContext.request.contextPath}/update/${user.uId}">
            <button class="btn btn-default btn-primary">修改个人信息</button>
        </a>
    </div>

    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    %>
    <!-- -->
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">头 &nbsp; &nbsp; &nbsp; &nbsp; 像：</p></div>
    </div>
    <div style="margin-top: 30px;"></div>
    <form  id="form-upload">
        <section>
            <input type="hidden" name="uId" value="${proEmail}">
            <div class="row">
                <div class="col-md-3 column "></div>
                <div class="col-md-4 column">
                    <label for="avatar"><img id="avatar-img" style="width: 100px; height: 100px ;"  src="${pageContext.request.contextPath}/img/avatar/img_placeholder_square.png" alt="" class="img-circle"></label>
                    <input accept="image/*" type="file" name="avatar" id="avatar" style="display: none">
                    <span class="help-block"></span>
                </div>
                <div class="col-md-4 column">
                    <p style="float: right"></p>
                    <img src="${pageContext.request.contextPath}${user.pro}" style="width: 100px; height: 100px" alt="原头像" class="img-circle">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 column "></div>
                <div class="col-md-4 column">
                    <input style="" id="form-btn" type="button" class="btn btn-primary" value="上传" />
                </div>
                <div class="col-md-4 column">
                    <a href="${pageContext.request.contextPath}/refresh"><input style="" id="form-seb" type="button" class="btn btn-primary" value="刷新" /></a>
                </div>
            </div>
        </section>

    </form>
    <script>
        // 头像预览
        // 找到头像的input标签绑定change事件
        $("#id_avatar").change(function () {
            // 1. 创建一个读取文件的对象
            var fileReader = new FileReader();
            // 取到当前选中的头像文件
            // console.log(this.files[0]);
            // 读取你选中的那个文件
            fileReader.readAsDataURL(this.files[0]);  // 读取文件是需要时间的
            fileReader.onload = function () {
                // 2. 等上一步读完文件之后才 把图片加载到img标签中
                $("#avatar-img").attr("src", fileReader.result);
            };
        });

        $("#form-btn").click(function() {
            $.ajax({
                url:"${pageContext.request.contextPath}/upPro",
                data:new FormData($("#form-upload")),
                processData:false,
                contentType:false,
                type:"POST",
                dataType:"json",
                success:function(data) {
                    Console.log(data);
                    var obj =data[0].sta;
                    if (obj === "ok") {
                        alert("修改成功！");
                        //$("#img-avatar").attr("src", json.data);
                    } else {
                        alert("修改失败！" + data[1] .msg+ "！");
                    }
                },
                "error":function(xhr) {
                    alert("您的登录信息已经过期，请重新登录！\n\nHTTP响应码：" + xhr.status);
                    <%--location.href = "${pageContext.request.contextPath}/toLogin";--%>
                }
            });
        });
    </script>
    <div style="margin-top: 30px;"></div>
    <div class="row">

        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">注册 &nbsp; &nbsp; id：</p></div>
        <div class="col-md-6 column"><p aria-placeholder="null">${user.uId}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">注册邮箱：</p></div>
        <div class="col-md-6 column"><p placeholder="null">${user.uEmail}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">使用密码：</p></div>
        <div class="col-md-6 column"><p aria-placeholder="null" type="password" required data-eye>${user.uPwd}</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">电话号码：</p></div>
        <div class="col-md-6 column"><p aria-placeholder="null">${user.uTel}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">真实姓名：</p></div>
        <div class="col-md-6 column"><p placeholder="null">${user.uName}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">证件号码：</p></div>
        <div class="col-md-6 column"><p placeholder="null">${user.uNum}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">年 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</p></div>
        <div class="col-md-6 column"><p aria-placeholder="null">${user.uAge}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">性 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</p></div>
        <div class="col-md-6 column"><p aria-placeholder="null">${user.uSex}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">地 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</p></div>
        <div class="col-md-6 column"><p aria-placeholder="null">${user.uAdd}</p></div>
    </div>
    <div class="row">
        <div class="col-md-4 column "></div>
        <div class="col-md-2 column"><p style="float: right">注册时间：</p></div>
        <%--        <date:date value="${time}" parttern="yyyy-MM-dd HH:mm:ss"></date:date>--%>
        <div class="col-md-6 column"><p aria-placeholder="null">${user.uTime}</p></div>
    </div>
</div>

<div style="margin-top: 30px;"></div>


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


<!--
<script type="text/javascript">
    //密码的显示与隐藏
    $(function() {
        $("p[type='password'][data-eye]").each(function(i) {
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
                    $this.attr('class', 'hidden');
                    $this.removeClass("show");
                    $(this).removeClass("btn-outline-light");
                }else{
                    $this.attr('class', '');
                    $this.val($("#passeye-"+i).val());
                    $this.addClass("show");
                    $(this).addClass("btn-outline-light");
                }
            });
        });
    });
</script>
-->
</html>
