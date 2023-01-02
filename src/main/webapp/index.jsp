<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service home page</title>
</head>
<body>
<h1>Welcome to taxi service home page</h1>
<table>
    <tr>
        <td><a href="${pageContext.request.contextPath}/cars">cars</a></td>
        <td><a href="${pageContext.request.contextPath}/drivers">drivers</a></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers">manufacturers</a></td>
    </tr>
</table>
</body>
</html>
