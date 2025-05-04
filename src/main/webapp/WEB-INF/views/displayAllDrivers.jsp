<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>drivers</title>
    </head>
    <body>
        <h1>List of Drivers</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Licenses Number</td>
                <td>Delete</td>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}"   /></td>
                    <td><c:out value="${driver.name}"   /></td>
                    <td><c:out value="${driver.licenseNumber}"   /></td>
                    <td><a href="${pageContext.request.contextPath}/driver/delete?id=${driver.id}" style="text-decoration: none">delete this driver</a></td>
                </tr>
            </c:forEach>>
        </table>
    </body>
</html>
