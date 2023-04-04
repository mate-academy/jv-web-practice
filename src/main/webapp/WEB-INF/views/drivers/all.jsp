<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ATMS-drivers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<h3>To add new driver please fill the form:</h3><br>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Driver name <input type="text" name="name" required><br>
    License number <input type="text" name="licenseNumber" required><br>
    <button type="submit">Add driver</button>
</form><br>
<h3>List of drivers</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
