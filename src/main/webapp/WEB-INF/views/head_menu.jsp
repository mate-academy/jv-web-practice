<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Head menu</title>
</head>
<body>
    <table>
        <tr>
            <td><a href="${pageContext.request.contextPath}/index">Main page</a></td>
            <td><a href="${pageContext.request.contextPath}/cars">Cars</a></td>
            <td><a href="${pageContext.request.contextPath}/drivers">Drivers</a></td>
            <td><a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a></td>
        </tr>
    </table>
</body>
</html>
