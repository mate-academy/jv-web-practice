<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/index.jsp" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<h3>Add manufacturer</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr>
            <td>Manufacturer's name:</td><td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>Country:</td><td><input type="text" name="country" required></td>
        </tr>
        <tr>
            <td></td><td><input type="submit" value="Add manufacturer"></td>
        </tr>
    </table>
</form>
</body>
</html>
