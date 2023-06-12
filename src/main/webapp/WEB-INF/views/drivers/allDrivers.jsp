<%--
  Created by IntelliJ IDEA.
  User: vvasy
  Date: 04.04.2023
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TAXI-Drivers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/index.jsp"%><br>
<h2>Create driver form: </h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <p>Name <input type="text" name="name" required><br></p>
    <p>Licence number <input type="text" name="license_number" required><br></p>
    <button type="submit">Submit and Add</button><br>
</form><br>
<h2>Drivers:</h2>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
