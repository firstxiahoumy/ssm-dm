<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title> || Directory Management</title>
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
                        <a href="${pageContext.request.contextPath}/install" name="dTag" aria-valuetext="install">install</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/compress" name="dTag" aria-valuetext="compress">compress</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/media" name="dTag" aria-valuetext="media">media</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/directory" name="dTag" aria-valuetext="directory">directory</a>
                    </li>
                </ul>
            </li>
        </ul>
        <form action="${pageContext.request.contextPath}/select" class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control" name="" id="" placeholder="搜索公共资源池"/>
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
<div>

    <form action=" ${pageContext.request.contextPath}/upPro" enctype="multipart/form-data" >
        <input type="file" alt="tupian" width="100px" height="100px" name="pro" id="upPro" onchange="upPro()">

        <input type="submit" alt="tijiao">
        <script>
            function upPro() {
                var fileObj = document.getElementById("upPro").files[0]; // js 获取文件对象
                var fileObjName = $("#upPro").val();
                if (typeof (fileObj) == "undefined" || fileObj.size <= 0) {
                    alert("请选择要导入的文档?");
                    return;
                }
                //判断是否为 图片文件
                var fileName = getFileName(fileObjName);
                var fileSuffix = getFileSuffix(fileObjName);
                if (fileSuffix != 'png' && fileSuffix != 'jpg' && fileSuffix != "jpeg") {
                    alert("----请选择正确的文件格式---------");
                    return;
                }
                //确认是否上传(略)
                //执行上传
                uploadWordDo(fileObj, fileName);

            }
        </script>
    </form>


    <%--隐藏的文件输入框--%>
    <img style="width: 100px;height: 100px"
         src="${pageContext.request.contextPath}/img/avatar/img_placeholder_square.png">
    <input id="FileUpload" name="pictureFile" type="file" onchange="uploadWord()" style="display: none"/>
    <%--    <input id="uEmail" type="hidden" name="uEmail" value="${proEmail}" readonly required/>--%>
    <%--页面按钮--%>
    <button id="addImport">导入</button>
    <script type="text/javascript">
        /**
         * 导入入口
         */
        $('#addImport').click(function () {
            openFileDialogue();
        });

        /**
         * 打开上传文件对话框
         */
        function openFileDialogue() {
            var f = document.getElementById('FileUpload');
            f.click();
        }

        /**
         * 文件上传 前检查与确认
         */
        var msg;

        function uploadWord() {
            var fileObj = document.getElementById("FileUpload").files[0]; // js 获取文件对象
            var fileObjName = $("#FileUpload").val();
            if (typeof (fileObj) == "undefined" || fileObj.size <= 0) {
                alert("请选择要导入的文档?");
                return;
            }
            //判断是否为 图片文件
            var fileName = getFileName(fileObjName);
            var fileSuffix = getFileSuffix(fileObjName);
            if (fileSuffix != 'png' && fileSuffix != 'jpg' && fileSuffix != "jpeg") {
                alert("----请选择正确的文件格式---------");
                return;
            }
            //确认是否上传(略)
            //执行上传
            uploadWordDo(fileObj, fileName);

        }

        /**
         * 发送ajax请求 执行上传
         */
        function uploadWordDo(fileObj) {
            var formFile = new FormData();
            formFile.append("pictureFile", fileObj); //加入文件对象
            formFile.append("basePath", ""); //加入文件对象
            var data = formFile;
            $.ajax({
                url: "${pageContext.request.contextPath}/upload",
                data: data,
                type: "Post",
                dataType: "json",
                async: true,
                cache: false,
                processData: false,//用于对data参数进行序列化处理 这里必须false
                contentType: false, //必须
                success: function (result) {
                    //成功提示
                    var code = result.code;
                    if (code == '0000') {
                        alert("--上传成功---");
                    } else {
                        alert("--失败---");
                    }
                }
            });
        }

        /**
         * 获取文件名
         * @param file
         * @returns {*}
         */
        function getFileName(pictureFile) {
            var arr = pictureFile.split('\\');
            return arr[arr.length - 1];
        }

        /**
         * 获取后缀
         * @param file
         * @returns {string}
         * 4      */
        function getFileSuffix(pictureFile) {
            var point = pictureFile.lastIndexOf(".");
            var type = pictureFile.substr(point + 1);
            return type;
        }

    </script>
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
</body>
</html>
