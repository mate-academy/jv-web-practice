<%--
  Created by IntelliJ IDEA.
  User: Sirko
  Date: 03.02.2023
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/createManufacturers">
    <table>
        <tr>
            <td>Manufacturer</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="country"></td>
        </tr>
    </table>
    <button type="submit">Create manufacturer</button>
</form>
<form method="get"
      action="${pageContext.request.contextPath}/index">
    <button type="submit">
        back to service
    </button>
</form>
</form>
</body>
</html>
