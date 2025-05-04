<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buttons</title>
</head>
<body>
<h4>
    <a href="${pageContext.request.contextPath}/manufacturers/all">
        <input type="button" value="Manufactures"/>
    </a>
    <a href="${pageContext.request.contextPath}/drivers/all">
        <input type="button" value="Drivers"/>
    </a>
    <a href="${pageContext.request.contextPath}/cars/all">
        <input type="button" value="Cars"/>
    </a>
</h4>
</body>
</html>
