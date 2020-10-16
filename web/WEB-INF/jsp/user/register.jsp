<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title>REGISTER || Directory Management</title>
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
                    <button type="button" class="btn btn-default btn-primary"><a
                            href="${pageContext.request.contextPath}/public/back" style="color: #111111;">返回首页</a>
                    </button>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-5 column">
                    <h2 style="margin: 30px 0 10px ;">
                        <p><span>用户注册</span></p>
                    </h2>
                    <form action="${pageContext.request.contextPath}/register" role="form" method="post">
                        <div class="form-group">
                            <label for="uEmail">Email address:</label>

                            <input type="email" class="form-control" id="uEmail" name="uEmail" value="${uEmail}"
                                   placeholder="xxx@dm.net或者xxx@nc.com"
                                   style="background-color: #aaa999; color: #000000;"  onblur="validateName()"/><br>
                            <span id="emailInfo"></span>
                        </div>
                        <div class="form-group">
                            <label for="uPwd">Password:</label>
                            <input type="password" class="form-control" id="uPwd" name="uPwd" value="${uPwd}"
                                   placeholder="密码由数字,字母组成不低于6个字符" style="background-color: #aaa999; color: #000000;" required data-eye/>

                        </div>
                        <!---->
                        <div class="form-group">
                            <label for="checkPwd">Check password:</label>
                            <input type="password" class="form-control" id="checkPwd" name="uPwd" placeholder="确认密码"
                                   style="background-color: #aaa999; color: #000000;" onkeyup="checkPassword()" required data-eye />
                            <span id="hint"></span>
                        </div>
                        <div class="form-group">
                            <label for="userTel">Tel：</label>
                            <input type="tel" class="form-control" id="userTel" name="uTel" value="${uTel}"
                                   placeholder="xxxxxxxxxxx" style="background-color: #aaa999; color: #000000;"/>
                            <span style="margin-right: 10px ;float: right;"><em>我有账户返回</em> &nbsp; <b><a
                                    href="${pageContext.request.contextPath}/toLogin">登录</a></b></span>
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
                        <div class="form-group" style="margin: 0 auto;">
                            <button type="submit" class="btn btn-default btn-primary">注册</button>
                        </div>


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
<div style="margin-bottom: 120px;"></div>
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
    //验证两次输入密码是否一致
    function checkPassword() {
        var password = document.getElementById("uPwd").value;
        var chkPassword = document.getElementById("checkPwd").value;

        if(password == chkPassword) {
            document.getElementById("hint").innerHTML="<br><font color='green'>两次密码输入一致</font>";
            document.getElementById("submit").disabled = false;

        }else {
            document.getElementById("hint").innerHTML="<br><font color='red'>两次输入密码不一致!</font>";
            document.getElementById("submit").disabled = true;
        }
    }
</script>
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
<script type="text/javascript">
    // 原生ajax检测用户的唯一性

    var xmlHttp;

    //创建Ajax对象
    function createXMLHttpRequest() {
        if (window.ActiveXObject) {
            //IE6 and IE5
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        } else if (window.XMLHttpRequest) {
            //W3C浏览器和IE7及其以上版本
            xmlHttp = new XMLHttpRequest();
        }
    }

    function validateName() {
        //调用创建Ajax方法
        createXMLHttpRequest();
        //获取用户名的值
        var uEmail = document.getElementById("uEmail");
        //将内容发送给哪个url处理
        var url = "${pageContext.request.contextPath}/judgeEmail?uEmail=" + escape(uEmail.value);
        //创建HTTP请求（请求方式，请求URL，是否异步）
        xmlHttp.open("GET", url, true);
        //状态改变时
        xmlHttp.onreadystatechange = function () {
            //如果都ok
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {

                // var nameReg = /^[a-zA-Z][\w]{5,19}$/;//以字母开头，后面内容可以是字母，数字，下划线，且6~20位
                //必须由 大小写字母 或 数字 或下划线开头
                var emailReg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

                // var emailReg = /^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$/;
                if (emailReg.test(document.getElementById('uEmail').value) == false) {
                    document.getElementById('emailInfo').innerText = "邮箱地址格式不正确";
                } else {
                    var color = "red";
                    var message = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;
                    var passed = xmlHttp.responseXML.getElementsByTagName("passed")[0].firstChild.data;
                    if (passed == "true") {
                        color = "green";
                    }
                    document.getElementById("emailInfo").innerHTML = "<span style=color:" + color + ">" + message + "</span>";
                }
            }
        };
        xmlHttp.send();

    }

    /**
     *

     //验证手机号
     <%--function validateID() {--%>
     <%--    //调用创建Ajax方法--%>
     <%--    createXMLHttpRequest();--%>
     <%--    //获取用户名的值--%>
     <%--    var idnumber = document.getElementById("idnumber");--%>
     <%--    //将内容发送给哪个url处理--%>
     <%--    var url = "${pageContext.request.contextPath }/seller/findBrandByID?idnumber=" + escape(idnumber.value);--%>
     <%--    //创建HTTP请求（请求方式，请求URL，是否异步）--%>
     <%--    xmlHttp.open("GET", url, true);--%>
     <%--    xmlHttp.onreadystatechange = function(){--%>
     <%--        if(xmlHttp.readyState==4 && xmlHttp.status==200){--%>
     <%--            // 身份证验证--%>
     <%--            //var idnumberReg = /^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/;--%>
     <%--            if (idnumberReg.test(document.getElementById('idnumber').value) == false) {--%>
     <%--                document.getElementById('idnumberInfo').innerText = "身份证号有误，请输入正确的身份证号";--%>
     <%--            }else{--%>
     <%--                var color ="red";--%>
     <%--                var message = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;--%>
     <%--                var passed = xmlHttp.responseXML.getElementsByTagName("passed")[0].firstChild.data;--%>
     <%--                if(passed=="true"){--%>
     <%--                    color ="green";--%>
     <%--                }--%>
     <%--                document.getElementById("idnumberInfo").innerHTML = "<span style=color:"+color+">"+message+"</span>";--%>
     <%--            }--%>
     <%--        }--%>
     <%--    };--%>
     <%--    xmlHttp.send(null);--%>
     <%--}--%>
     */
</script>
</body>
</html>