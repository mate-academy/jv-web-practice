<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI SERVICE</title>
</head>
<body>
    <h3>List of drivers:</h3>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}//driver/delete?id=${driver.id}">
                delete this  driver</a> </td>
        </tr>
    </c:forEach>
</table>
    <td><a href="${pageContext.request.contextPath}/service"><- back to service menu</a></td>
</body>
</html>
