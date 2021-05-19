<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Get all drivers</title>
    </head>
    <body>
        <h1>List of drivers:</h1>
        <table>
            <tr>
                <td>id</td>
                <td>name</td>
                <td>license number</td>
                <td>delete</td>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.getId()}" /></td>
                    <td><c:out value="${driver.getName()}" /></td>
                    <td><c:out value="${driver.getLicenseNumber()}" /></td>
                    <td><button onclick="location.href='${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}'"
                                type="button">delete this driver</button></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
