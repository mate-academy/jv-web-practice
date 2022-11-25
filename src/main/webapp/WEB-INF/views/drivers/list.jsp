<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web Practice</title>
</head>
    <body>
        <h1>All Drivers List</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>License Number</td>
            </tr>
            <c:forEach items="${driversList}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}" /></td>
                    <td><c:out value="${driver.name}" /></td>
                    <td><c:out value="${driver.licenseNumber}" /></td>
                    <td><button><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></button></td>
                </tr>
            </c:forEach>
            <form method="post" action="${pageContext.request.contextPath}/drivers/add">
                <tr>
                    <td>#</td>
                    <td><input type="text" name="name"></td>
                    <td><input type="text" name="license_number"></td>
                    <td><button type="submit">add</button></td>
                </tr>
            </form>
        </table>
    </body>
</html>
