<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="post" id="drivers" action="${pageContext.request.contextPath}/drivers/all"></form>
<h1>List of drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENSE_NUMBER</td>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
        </tr>
        <td>
            <a href="${pageContext.request.contextPath}"></a>
        </td>
    </c:forEach>
</table>
</body>
</html>
