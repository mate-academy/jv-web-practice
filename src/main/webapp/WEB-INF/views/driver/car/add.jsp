<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<table valign="middle" align="center" border="BLACK" cellpadding="5">
    <caption>ADD DRIVER TO CAR</caption>
    <tr>
        <td>
            <form method="post" action="${pageContext.request.contextPath}/drivers/car/add">
                Driver ID <input type="number" name="driver_id"><br>
                Car_id <input type="number" name="car_id"><br><br>
                <button type="submit">Add driver to car</button>
            </form>
        </td>
    </tr>
    <tr>
        <td align="center"><a href="${pageContext.request.contextPath}/index">
            Home page</a></td>
    </tr>
</table>
</body>
</html>
