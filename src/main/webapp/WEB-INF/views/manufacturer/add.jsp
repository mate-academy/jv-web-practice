<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi services</title>
</head>
<body>
<table valign="middle" align="center" border="BLACK" cellpadding="5">
    <caption>CREAT MANUFACTURER</caption>
    <tr>
        <td>
            <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
                Name <input type="text" name="name"><br>
                Country <input type="text" name="country"><br>
                <button type="submit">Add manufacturer</button>
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
