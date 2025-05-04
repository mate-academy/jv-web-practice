<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/index.jsp" %>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h3>Add driver</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr>
            <td>Driver's name:</td><td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>License's number:</td><td><input type="text" name="license" required></td>
        </tr>
        <tr><td></td><td><input type="submit" value="Add driver"></td></tr>
    </table>
</form>
</body>
</html>
