
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page language="java" contentType="text/html; charset=utf-8" isErrorPage="true" pageEncoding="utf-8"%>--%>

<html>
<head>
    <title>404</title>
    <style>
        #inFor_message{
            text-align: center;
        }
        .error{
            font-size:40px;
            margin-top: 20px;
            color: #9d261d;
        }
    </style>
</head>
<body>
<%--<%response.setStatus(HttpServletResponse.SC_OK);--%>

<%--%>--%>
<%--<%--%>
<%--    /**--%>
<%--     * 本页面是在客户查找的页面无法找到的情况下调用的--%>
<%--     */--%>
<%--    response.setStatus(HttpServletResponse.SC_OK);--%>
<%--%>--%>
<header>

</header>
<div id="inFor_message">

    <hr>
    <span style="font-size: 24px">404</span>
    <hr style="">
    <p class="error">服务器跑的太快，我被丢弃了(--~_^_~--)</p>
    <p><b style="color: red">${}</b></p>
    <hr>
</div>
<footer>
    <p style="margin-left: 20px">想获取更多信息请点击 <a href="${pageContext.request.contextPath}/browse/read">http://www.dm.net/browse/read</a></p>
</footer>

</body>
</html>
