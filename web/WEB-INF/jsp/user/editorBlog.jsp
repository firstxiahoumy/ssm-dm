<%--
  Created by IntelliJ IDEA.
  User: aliketh.xhmy
  Date: 2020/10/12
  Time: 11:27
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
    <title>editorBlog || Directory Management</title>
    <!-- jquery -->
    <script src="${pageContext.request.contextPath}/jquery/jquery-3.5.0.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap js文件 -->
    <script src="${pageContext.request.contextPath}/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- 引入 bootstrap css文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/dist/css/bootstrap.min.css"
          type="text/css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/mdEditor/css/editormd.css"/>

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
    <div class="row page-header">
        <h1><small>blog_editor_example</small></h1>
    </div>
    <div class="row" style="text-align: center">
        <div class="col-md-3">
            <a href="${pageContext.request.contextPath}/article/uploadBlog">
                <button class="btn btn-primary btn-default">上传博客</button>
            </a>
        </div>
        <div class="col-md-3">
            <a href="${pageContext.request.contextPath}/article/editorBlog">
                <button class="btn btn-primary btn-default">编辑博客</button>
            </a>
        </div>
        <div class="col-md-3">
            <a href="${pageContext.request.contextPath}/article/draftBlog">
                <button class="btn btn-primary btn-default">草稿箱</button>
            </a>
        </div>
        <div class="col-md-3">
            <a href="${pageContext.request.contextPath}/article/allBlog">
                <button class="btn btn-primary btn-default">所有记录</button>
            </a>
        </div>
    </div>
</div>
<!--
<div class="" style="width: 90%;margin: 5px auto;">
    <button id="goto-line-btn">Goto line 90</button>
    <button id="show-btn">Show editor</button>
    <button id="hide-btn">Hide editor</button>
    <button id="get-md-btn">Get Markdown</button>
    <button id="get-html-btn">Get HTML</button>
    <button id="watch-btn">Watch</button>
    <button id="unwatch-btn">Unwatch</button>
    <button id="preview-btn">Preview HTML (Press Shift + ESC cancel)</button>
    <button id="fullscreen-btn">Fullscreen (Press ESC cancel)</button>
    <button id="show-toolbar-btn">Show toolbar</button>
    <button id="close-toolbar-btn">Hide toolbar</button>
    <button id="toc-menu-btn">ToC Dropdown menu</button>
    <button id="toc-default-btn">ToC default</button>
</div>
-->

<div id="editorMd"></div>
<form>
    <div id="article-editor">
        <label>
<textarea style="display:none;">### 关于 Editor.md

**Editor.md** 是一款开源的、可嵌入的 Markdown 在线编辑器（组件），基于 CodeMirror、jQuery 和 Marked 构建。
</textarea>
        </label>
    </div>
</form>

<script src="${pageContext.request.contextPath}/static/mdEditor/editormd.min.js"></script>
<script type="text/javascript">
    $(function () {
        var editor = editormd("article-editor", {
            width: "90%",
            height: 700,
            path: "${pageContext.request.contextPath}/static/mdEditor/lib/",
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL: ${pageContext.request.contextPath}"/static/upload/image/"
        });
    });
    var testEditor;

    <%--$(function() {--%>

    <%--    $.get('${pageContext.request.contextPath}/static/mdEditor/examples/test.md', function(md){--%>
    <%--        testEditor = editormd("editorMd", {--%>
    <%--            width: "90%",--%>
    <%--            // height: 740,--%>
    <%--            path : '${pageContext.request.contextPath}/static/mdEditor/lib/',--%>
    <%--            theme : "dark",--%>
    <%--            previewTheme : "dark",--%>
    <%--            editorTheme : "pastel-on-dark",--%>
    <%--            markdown : md,--%>
    <%--            codeFold : true,--%>
    <%--            //syncScrolling : false,--%>
    <%--            saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea--%>
    <%--            searchReplace : true,--%>
    <%--            //watch : false,                // 关闭实时预览--%>
    <%--            htmlDecode : "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启--%>
    <%--            //toolbar  : false,             //关闭工具栏--%>
    <%--            //previewCodeHighlight : false, // 关闭预览 HTML 的代码块高亮，默认开启--%>
    <%--            emoji : true,--%>
    <%--            taskList : true,--%>
    <%--            tocm            : true,         // Using [TOCM]--%>
    <%--            tex : true,                   // 开启科学公式TeX语言支持，默认关闭--%>
    <%--            flowChart : true,             // 开启流程图支持，默认关闭--%>
    <%--            sequenceDiagram : true,       // 开启时序/序列图支持，默认关闭,--%>
    <%--            //dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true--%>
    <%--            //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true--%>
    <%--            //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true--%>
    <%--            //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1--%>
    <%--            //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff--%>
    <%--            imageUpload : true,--%>
    <%--            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],--%>
    <%--            imageUploadURL : ${pageContext.request.contextPath}"/static/upload/image/",--%>
    <%--            onload : function() {--%>
    <%--                console.log('onload', this);--%>
    <%--                //this.fullscreen();--%>
    <%--                //this.unwatch();--%>
    <%--                //this.watch().fullscreen();--%>

    <%--                //this.setMarkdown("#PHP");--%>
    <%--                //this.width("100%");--%>
    <%--                //this.height(480);--%>
    <%--                //this.resize("100%", 640);--%>
    <%--            }--%>
    <%--        });--%>
    <%--    });--%>

    <%--    $("#goto-line-btn").bind("click", function(){--%>
    <%--        testEditor.gotoLine(90);--%>
    <%--    });--%>

    <%--    $("#show-btn").bind('click', function(){--%>
    <%--        testEditor.show();--%>
    <%--    });--%>

    <%--    $("#hide-btn").bind('click', function(){--%>
    <%--        testEditor.hide();--%>
    <%--    });--%>

    <%--    $("#get-md-btn").bind('click', function(){--%>
    <%--        alert(testEditor.getMarkdown());--%>
    <%--    });--%>

    <%--    $("#get-html-btn").bind('click', function() {--%>
    <%--        alert(testEditor.getHTML());--%>
    <%--    });--%>

    <%--    $("#watch-btn").bind('click', function() {--%>
    <%--        testEditor.watch();--%>
    <%--    });--%>

    <%--    $("#unwatch-btn").bind('click', function() {--%>
    <%--        testEditor.unwatch();--%>
    <%--    });--%>

    <%--    $("#preview-btn").bind('click', function() {--%>
    <%--        testEditor.previewing();--%>
    <%--    });--%>

    <%--    $("#fullscreen-btn").bind('click', function() {--%>
    <%--        testEditor.fullscreen();--%>
    <%--    });--%>

    <%--    $("#show-toolbar-btn").bind('click', function() {--%>
    <%--        testEditor.showToolbar();--%>
    <%--    });--%>

    <%--    $("#close-toolbar-btn").bind('click', function() {--%>
    <%--        testEditor.hideToolbar();--%>
    <%--    });--%>

    <%--    $("#toc-menu-btn").click(function(){--%>
    <%--        testEditor.config({--%>
    <%--            tocDropdown   : true,--%>
    <%--            tocTitle      : "目录 Table of Contents",--%>
    <%--        });--%>
    <%--    });--%>

    <%--    $("#toc-default-btn").click(function() {--%>
    <%--        testEditor.config("tocDropdown", false);--%>
    <%--    });--%>
    <%--});--%>

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

