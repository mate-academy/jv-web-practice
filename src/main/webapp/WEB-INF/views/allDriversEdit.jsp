<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Delete driver</title>
</head>
<body>
<h2><a href="/index">Back to home page</a></h2>
<br>
<br>
<h3>All active drivers:</h3>
<br>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
        <th>Delete from the Matrix</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="/drivers/all/adminDelete?id=${driver.id}">Delete this driver</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
