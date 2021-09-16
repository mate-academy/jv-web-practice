<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers list</title>
</head>
<body>
<h2>All drivers list</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers">
    <table>
        <tr>
            <td><b>ID</b></td>
            <td><b>Name</b></td>
            <td><b>Licence number</b></td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                        Delete this driver</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <br>
    <a href="${pageContext.request.contextPath}/">Return to main menu</a>
    <br>
</form>
</body>
</html>
