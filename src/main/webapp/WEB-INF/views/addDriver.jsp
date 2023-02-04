<%--
  Created by IntelliJ IDEA.
  User: Sirko
  Date: 03.02.2023
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
</html>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/addDriver">
    <table>
        <tr>
            <td>Car ID</td>
            <td><input type="number" name="car_id"><br></td>
        </tr>
        <tr>
            <td>Driver ID</td>
            <td><input type="number" name="driver_id"></td>
        </tr>
    </table>
    <button type="submit">Add driver to car</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</body>
</html>
