<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <title>GetAllManufacturers</title>
    <h1>Get All Manufacturers</h1>
    <body>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers">
        <table>
            <tr>
                <td>ID</td>
                <td>NAME</td>
                <td>Country</td>
                <td>Delete</td>
            </tr>
            <c:forEach items="${manufacturerList}" var="manufacturer">
                <tr>
                    <td><c:out value="${manufacturer.id}" /></td>
                    <td><c:out value="${manufacturer.name}" /></td>
                    <td><c:out value="${manufacturer.country}" /></td>
                    <td><a href="${pageContext.request.contextPath}/manufacturer/delete?id=${manufacturer.id}"> delete this manufacturer </a> </td>
                </tr>
            </c:forEach>
        </table>
        <br>
    </form>
    </body>
</html>
