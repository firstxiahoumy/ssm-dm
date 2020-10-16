<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- ico图片 -->
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!--  -->
    <title>LoginLog || Directory Management</title>
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
<div class="container">
    <div class="row page-header">
        <h1><small>login_log</small></h1>
    </div>
    <div class="row">
        <div class="col-md-12 ">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>登入用户</th>
                    <th>登入方式</th>
                    <th>登入地址</th>
                    <th>登入状态</th>
                    <th>登入系统</th>
                    <th>登入&nbsp;ip</th>
                    <th>登入时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${pageInfos.list}">
                    <tr>
                        <td><input name="ids" type="checkbox"></td>
                        <td>${user.id}</td>
                        <td>${user.user}</td>
                        <td>${user.loginWay}</td>
                        <td>${user.location}</td>
                        <td>${user.state}</td>
                        <td>${user.system}</td>
                        <td>${user.ip}</td>
                        <td>${user.loginTime}</td>
                        <td class="text-center">
                            <a href="${pageContext.request.contextPath}/loginLog?id=${user.id}"
                               class="btn bg-olive btn-xs">更新</a>
                            <a href="${pageContext.request.contextPath}/loginLog?id=${user.id}"
                               class="btn bg-olive btn-xs">删除</a>

                        </td>
                    </tr>
                </c:forEach>

                </tbody>
                <tfoot>

                </tfoot>

            </table>

        </div>
    </div>
    <div class="row form-inline">
        <div class="col-md-6" style="margin-top: auto;margin-left: 0 ">
            <span>分别为您列出（<small aria-placeholder="0">${pageInfos.pages}</small>）页，
                工（${pageInfos.total}）条登录记录</span>
        </div>
        <div class="col-md-6">
            <ul class="pagination " style="float: right">
                <li><a href="${pageContext.request.contextPath}/loginLog?page=1&size=10" aria-label="Previous">首页</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/loginLog?page=${pageInfos.pageNum-1}&size=10">上一页</a>
                </li>
                <c:forEach begin="1" end="${pageInfos.pages}" var="pageNumber">
                    <li>
                        <a href="${pageContext.request.contextPath}/loginLog?page=${pageNumber}&size=10">${pageNumber}</a>
                    </li>
                </c:forEach>
                <li><a href="${pageContext.request.contextPath}/loginLog?page=${pageInfos.pageNum+1}&size=10">下一页</a>
                </li>
                <li><a href="${pageContext.request.contextPath}/loginLog?page=${pageInfos.pages}&size=10"
                       aria-label="Next">尾页</a></li>
            </ul>
        </div>
    </div>
    <!--
    <div class="row">
        <div class="col-md-12 ">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>登入用户</th>
                    <th>登入方式</th>
                    <th>登入地址</th>
                    <th>登入状态</th>
                    <th>登入系统</th>
                    <th>登入&nbsp;ip</th>
                    <th>登入时间</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody data-itemcount="${couts}">
                <c:forEach var="user" items="${clist}">
                    <tr>
                            <%--                        <td><a class="t_avbiaoq" title="${country.id}">${country.id}</a></td>--%>
                            <%--                        <td><a class="t_avbiaoq" title="${country.countryname}">${country.countryname}</a></td>--%>
                            <%--                        <td><a class="t_avbiaoq" title="${country.countrycode}">${country.countrycode}</a></td>--%>


                        <td>${user.id}</td>
                        <td>${user.user}</td>
                        <td>${user.loginWay}</td>
                        <td>${user.location}</td>
                        <td>${user.state}</td>
                        <td>${user.system}</td>
                        <td>${user.ip}</td>
                        <td>${user.loginTime}</td>
                        <td class="text-center">
                            <a href="${pageContext.request.contextPath}/loginLog?id=${user.id}"
                               class="btn bg-olive btn-xs">更新</a>
                            <a href="${pageContext.request.contextPath}/loginLog?id=${user.id}"
                               class="btn bg-olive btn-xs">删除</a>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 ">
            <div id="krryPage"></div>
        </div>
    </div>
    -->

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
<!--
<script type="text/javascript">

    var krryAdminBlog = {
        initPage: function (itemCount) {
            $("#krryPage").tzPage(itemCount, {
                num_display_entries: 5, //主体页数
                num_edge_entries: 4,//边缘页数
                current_page: 0,//指明选中页码
                items_per_page: 10, //每页显示多少条
                prev_text: "上一页",
                next_text: "下一页",
                showGo: true,//显示
                showSelect: false,
                callback: function (pageNo, psize) {//会回传两个参数，第一个是当前页数，第二个是每页要显示的数量
                    krryAdminBlog.loadData(pageNo, psize);
                }
            });
        },
        loadData: function (pageNo, pageSize) {
            pageNo++; //下一页
            pageSize = 10; //每页都是显示10条
            $.ajax({
                type: "post",
                url: ${pageContext.request.contextPath}"/loadData",
                data: {pageNo: pageNo, pageSize: pageSize},
                success: function (data) {
                    if (data) {
                        var html = "";
                        var blogArr = data.clist;
                        for (var i = 0, len = blogArr.length; i < len; i++) {
                            var json = blogArr[i];
                            html += "<tr>" +
                                "   <td>" + json.id + "</td>" +
                                "   <td>" + json.user + "</td>" +
                                "   <td>" + json.loginWay + "</td>" +
                                "   <td>" + json.location + "</td>" +
                                "   <td>" + json.state + "</td>" +
                                "   <td>" + json.system + "</td>" +
                                "   <td>" + json.ip + "</td>" +
                                "   <td>" + json.loginTime + "</td>" +
                                "</tr>";
                        }
                        $("#tbody").html(html);
                    }
                }
            });
        }
    };

    krryAdminBlog.initPage($("#tbody").data("itemcount"));

</script>
-->
</body>
</html>
