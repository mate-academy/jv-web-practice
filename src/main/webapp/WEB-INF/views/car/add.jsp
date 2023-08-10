<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<table valign="middle" align="center" border="BLACK" cellpadding="5">
    <caption>CREAT CAR</caption>
    <tr>
        <td>
            <form method="post" action="${pageContext.request.contextPath}/cars/add">
                Model <input type="text" name="model"><br>
                Manufacturer <input type="number" name="manufacturer"><br>
                <button type="submit">Add car</button>
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
