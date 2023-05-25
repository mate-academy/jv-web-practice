<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buttons</title>
</head>
<body>
<h4>
    <a href="${pageContext.request.contextPath}/index">
        <input type="button" value="Main page" />
    </a>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <input type="button" value="Manufacturers" />
    </a>
    <a href="${pageContext.request.contextPath}/drivers">
        <input type="button" value="Drivers" />
    </a>
    <a href="${pageContext.request.contextPath}/cars">
        <input type="button" value="Cars" />
    </a>
</h4>
</body>
</html>
