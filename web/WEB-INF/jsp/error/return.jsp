

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>return information</title>
    <style>
        #inFor_message{
            text-align: center;
        }
        .error{
            font-size:150px;
            margin-top: 20px;
            color: #9d261d;
        }
    </style>
</head>
<body>
<header>

</header>
<div id="inFor_message">
    <h1 style="color: red">NOT FOUND</h1>
    <hr>
    <span class="error">404</span>
    <hr style="">
    <p><b style="color: red">${messages}</b></p>

</div>
<footer>
<p style="margin-left: 20px">想获取更多信息请点击 <a href="${pageContext.request.contextPath}/browse/read">http://www.dm.net/browse/read</a></p>
</footer>

</body>


</html>
