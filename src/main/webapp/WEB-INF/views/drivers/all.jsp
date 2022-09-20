<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Taxi service</title>
    </head>
    <body>
        <table>
            <tr>
                <td>id</td>
                <td>name</td>
                <td>license_number</td>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}" /></td>
                    <td><c:out value="${driver.name}" /></td>
                    <td><c:out value="${driver.licenseNumber}" /></td>
                    <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete driver</a> </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>