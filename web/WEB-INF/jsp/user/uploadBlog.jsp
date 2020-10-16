<%--
  Created by IntelliJ IDEA.
  User: aliketh.xhmy
  Date: 2020/10/12
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title>UploadBlog || Directory Management</title>
    <!-- jquery -->
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.4.1.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap js文件 -->
    <script src="${pageContext.request.contextPath}/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.min.css"
          type="text/css">


    <!-- jquery -->
<%--    <script src="${pageContext.request.contextPath}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/jquery/jquery-3.5.1.min.js" type="text/javascript"></script>--%>
    <!-- 自己定义css -->
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/" type="text/css">--%>
    <!-- 自定义js -->
<%--    <script src="${pageContext.request.contextPath}/js/admin/" type="text/javascript"></script>--%>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/mdEditor/css/editormd.css"/>
    <script src="${pageContext.request.contextPath}/js/ajaxFileUpload.js" type="text/javascript"></script>

    <!-- 网络文件 -->
    <%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">--%>
    <%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>--%>

    <style>
        body {
            font-family: Georgia, "Times New Roman", Times, serif;
            color: #2B333F;
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





        *{padding: 0;margin:0}
        ul,li{list-style:none;}
        a{color:#333;text-decoration: none;}
        .hidden{display:hidden;}
        input{border:0;outline:0;margin-bottom:10px;}
        img{vertical-align: middle;}
        .clear{clear:both;}
        body{font-size:14px;font-family: "微软雅黑";background:#333}
        .buttons{    display: block;
            width: 80px;
            height: 26px;
            color: black;
            background: #ffffff;
            font-size: 14px;
            font-family: "微软雅黑";
            margin: 0 auto;
            cursor: pointer;
            margin-bottom: 10px;}

        .container{width:1080px;margin:80px auto;}

        .formbox{float:left;text-align:center;width:300px;}
        .title{color:#fff;font-size:24px;margin-bottom:20px;}
        .formbox .f_btn{width:100px;height:40px;background:#0c0;color:#fff;font-size:14px;font-family:"微软雅黑";cursor:pointer;font-weight:bold;}
        .massage p{color:#fff;text-align:left;height:24px;}
        .sinimg{width:300px;height:300px;line-height:300px;color:#fff;}
        .formmutibox{float:left;width: 342px;margin: 0 24px 0;text-align:center;}
        .formmutibox .title{color:#fff;font-size:24px;margin-bottom:20px;}
        .formmutibox .f_btn{width:100px;height:40px;background:#0c0;color:#fff;font-size:14px;font-family:"微软雅黑";cursor:pointer;font-weight:bold;}
        .files table td{color:#fff;width:135px;}

        ::-webkit-scrollbar{width: 10px;height: 10px;}
        ::-webkit-scrollbar-track{background: 0 0;}
        ::-webkit-scrollbar-track-piece{background:#fff;}
        ::-webkit-scrollbar-thumb{background-color: #a2a2a2; border-radius: 5px;}
        ::-webkit-scrollbar-thumb:hover{background-color: #868686;}
        ::-webkit-scrollbar-corner{background:#212121;}
        ::-webkit-scrollbar-resizer{background:#FF0BEE;}
        scrollbar{-moz-appearance:none !important;background:rgb(0,255,0) !important;}
        scrollbarbutton{-moz-appearance:none !important;background-color:rgb(0,0,255) !important;}
        scrollbarbutton:hover{-moz-appearance:none !important;background-color:rgb(255,0,0) !important;}
        /* 隐藏上下箭头 */
        scrollbarbutton{display:none !important;}
        /* 纵向滚动条宽度 */
        scrollbar[orient="vertical"]{min-width:12px !important;}
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
            <li class="">
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
                        <a href="${pageContext.request.contextPath}/install" aria-placeholder="install">install</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/compress" aria-placeholder="compress">compress</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/media" aria-placeholder="media">media</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/directory"
                           aria-placeholder="directory">directory</a>
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
<div class="container">
    <div class="row">
        <form name="form1" method="post" action="${pageContext.request.contextPath}/article/uploadBlog" enctype="multipart/form-data">
            <div id="show" style="margin: auto 0;float: left;">
                <span>博客上传：</span>
                <input type="file" id="file" name="scan" style="display:inline-block">
                <input type="button" id="button" value="上传" onclick="ajaxFileUpload()" style="display:inline-block">
            </div>
        </form>
    </div>
    <div class="row">
        <div class="col-md-12">
            <span>请点击下载：</span>
            <a href="${pageContext.request.contextPath}/download?filename=README_CN.md">README_CN.md</a>
            <%--            <span>请点击下载：</span><a href="${pageContext.request.contextPath}/download?filename=${fileName}">${fileName}</a>--%>

        </div>
    </div>
    <!--
    <script>
        //上传文件
        function ajaxFileUpload() {
            $.ajaxFileUpload
            (
                {
                    url: '${pageContext.request.contextPath}/article/uploadBlog',//用于文件上传的服务器端请求地址
                    type: 'post',
                    secureuri: false,//一般设置为false
                    fileElementId: 'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
                    dataType: 'text',//返回值类型 一般设置为json
                    success: function (data)  //服务器成功响应处理函数  message
                    {
                        console.log(data);
                        $("#file").remove();
                        $("#button").remove();
                        var txt = "<input type='text' id='fileName' name='scan' value='" + data + "' style='display: inline'/>" +
                            "<input id = 'fileButton' type='button' onclick='ReplacePhoto()' value='更换文件' style='display: inline'/>";
                        $("#show").append(txt);
                        if (typeof (data.error) != 'undefined') {
                            if (data.error != '') {
                                alert(data.error);
                            } else {
                                alert(data.message);
                            }
                        }
                    },
                    error: function (data, status, e)//服务器响应失败处理函数
                    {
                        alert(e);
                    }
                }
            )
        }

        function ReplacePhoto() {
            var txt = "<input type='file' id ='file' name='scan' style='display:inline' />" +
                "<input style='display:inline' type='button' id='button' value='上传' onclick='ajaxFileUpload()'>";
            $("#fileName").remove();
            $("#fileButton").remove();
            $("#show").append(txt);

        }


    </script>-->
</div>
<div class="container">
    <!--单文件上传-->
    <div class="formbox">
        <p class="title">单个文件上传</p>
        <input type="file" id="fileupone" name="fileup" accept="image/jpeg,image/png" onchange="uploadFile(this)"/>
        <div class="massage">
            <p>文件名：<span class="filename"></span></p>
            <p>大小：<span class="filesize"></span></p>
            <p>文件格式：<span class="fileext"></span></p>
            <p>预览：</p>
            <div class="sinimg">
                预览图
            </div>
        </div>
    </div>

    <!--多文件上传-->
    <div class="formmutibox">
        <p class="title">多文件上传（单选）</p>
        <input type="file" class="fileupon11" accept="image/jpeg,image/png" />
        <input type="file" class="fileupon12" accept="image/jpeg,image/png" />
        <input type="file" class="fileupon13" accept="image/jpeg,image/png" />
        <input type="button" class="buttons" value="提交" onclick="multipartone()"/>
        <!--files start-->
        <div class="files">
            <table>
                <thead>
                <tr>
                    <td class="filelook2">文件预览</td>
                    <td class="filename2">文件名</td>
                    <td class="filesize2">大小</td>
                </tr>
                </thead>
                <tbody id="f_tbody">
                </tbody>
            </table>
        </div>
    </div>

    <!--多文件上传-->
    <div class="formmutibox">
        <p class="title">多文件上传（多选）</p>
        <input type="file" class="fileupon33" name="fileupmulti" accept="image/jpeg,image/png" onchange="mutiFiles(this)" multiple/>
        <!--files start-->
        <div class="files">
            <table>
                <thead>
                <tr>
                    <td class="filelook33">文件预览</td>
                    <td class="filename33">文件名</td>
                    <td class="filesize33">大小</td>
                </tr>
                </thead>
                <tbody id="f_tbody_m">
                </tbody>
            </table>
        </div>
    </div>
    <div class="clear"></div>
</div>

<script type="text/javascript">

    //单文件上传
    function uploadFile(obj){
        //创建一个FormData对象：用一些键值对来模拟一系列表单控件：即把form中所有表单元素的name与value组装成一个queryString
        var form = new FormData();
        var fileObj = obj.files[0];
        form.append("doc",fileObj);
        $.ajax({
            type:"post",
            data:form,
            url:basePath+"/upload/file",
            contentType: false, //必须false才会自动加上正确的Content-Type
            /*
                必须false才会避开jQuery对 formdata 的默认处理
               XMLHttpRequest会对 formdata 进行正确的处理
            */
            processData: false,
            success:function(data){
                var jdata = eval("("+data+")");
                $(".filename").text(jdata.oldname);
                $(".filesize").text(jdata.size);
                $(".fileext").text(jdata.ext);
                var imgString = "<img alt='预览图' src='"+jdata.url+"' width='300'>";
                $(".sinimg").html(imgString);
                //清除文件表单
                $("#fileupone").val("");
            }
        });
    }

    //多文件上传(单选)
    function multipartone(){
        var file1 = $(".fileupon11").get(0).files[0];
        var file2 = $(".fileupon12").get(0).files[0];
        var file3 = $(".fileupon13").get(0).files[0];
        //如果都是空，则直接退出
        if(isEmpty(file1) && isEmpty(file2) && isEmpty(file3)) return;

        var form = new FormData();
        //用同一个名字，注入到controller层的参数数组
        form.append("doc",file1);
        form.append("doc",file2);
        form.append("doc",file3);
        $.ajax({
            type:"post",
            data:form,
            url:basePath+"/upload/mutl",
            contentType: false, //必须false才会自动加上正确的Content-Type
            /*
                必须false才会避开jQuery对 formdata 的默认处理
               XMLHttpRequest会对 formdata 进行正确的处理
            */
            processData: false,
            success:function(data){
                var len = data.length;
                for(var i = 0;i < len;i++){
                    var datajson = data[i];
                    $("#f_tbody").append("<tr class='f_item'>"+
                        "<td><img src='"+datajson.url+"' alt='预览图像' width='40' height='40' /></td>"+
                        "<td>"+datajson.oldname+"</td>"+
                        "<td>"+datajson.size+"</td>"
                    );
                }
                //清除文件表单
                $(".fileupon11").val("");
                $(".fileupon12").val("");
                $(".fileupon13").val("");
            }
        });
    }

    //多文件上传(多选)
    function mutiFiles(obj){
        var form = new FormData();
        var fileObj = obj.files;
        var length = fileObj.length;
        //将fileObj转换成数组
        //var filese = Array.from(fileObj);
        for(var i = 0;i < length;i++){
            form.append("doc",fileObj[i]);
        }
        $.ajax({
            type:"post",
            data:form,
            url:basePath+"/upload/mutl",
            contentType: false, //必须false才会自动加上正确的Content-Type
            /*
                必须false才会避开jQuery对 formdata 的默认处理
               XMLHttpRequest会对 formdata 进行正确的处理
            */
            processData: false,
            success:function(data){
                var len = data.length;
                for(var i = 0;i < len;i++){
                    var datajson = data[i];
                    $("#f_tbody_m").append("<tr class='f_item'>"+
                        "<td><img src='"+datajson.url+"' alt='预览图像' width='40' height='40' /></td>"+
                        "<td>"+datajson.oldname+"</td>"+
                        "<td>"+datajson.size+"</td>"
                    );
                }
                //清除文件表单
                $(".fileupon33").val("");
            }
        });
    }

    /**
     * 判断非空
     *
     * @param val
     * @returns {Boolean}
     */
    function isEmpty(val) {
        val = $.trim(val);
        if (val == null)
            return true;
        if (val == undefined || val == 'undefined')
            return true;
        if (val == "")
            return true;
        if (val.length == 0)
            return true;
        if (!/[^(^\s*)|(\s*$)]/.test(val))
            return true;
        return false;
    }
</script>

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
</body>
</html>
