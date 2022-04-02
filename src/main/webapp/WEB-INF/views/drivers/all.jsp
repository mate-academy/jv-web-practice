<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
    <body>
        <h1>List of drivers:</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>NAME</td>
                <td>LICENSE NUMBER</td>
                <td>DELETE</td>
            </tr>
            <c:forEach items="${driver}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}" /></td>
                    <td><c:out value="${driver.name}" /></td>
                    <td><c:out value="${driver.licenseNumber}" /></td>
                    <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete this driver</a></td>
                </tr>
            </c:forEach>
        </table>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/drivers/register">
            Add new driver <button type="submit">Add</button>
        </form>
        <h1></h1>
        <form method="get" action="${pageContext.request.contextPath}/">
            Home page <button type="submit">Go</button>
        </form>
    </body>
</html>
