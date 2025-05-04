<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers from DB</title>
</head>
<body>
<form method ="post" action="${pageContext.request.contextPath}/drivers/add">
    Name : <input type="text" name="name">
    License Number : <input type="text" name="license_number">
    <button type="submit">Add</button>
</form>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
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
