<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>DRIVERS</title>
</head>
<body>
<%@include file="/WEB-INF/views/header/menu.jsp"%>
<h1>Drivers</h1>
<table>
    <tr >
        <th></th>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><input type="button"
                       value="delete"
                       onclick="window.location.href =
                               '${pageContext.request.contextPath}/drivers/delete?id=${driver.id}'">
            </td>
            <td><c:out value="${driver.id}" /> </td>
            <td><c:out value="${driver.name}" /> </td>
            <td><c:out value="${driver.licenseNumber}" /> </td>
        </tr>
    </c:forEach>
</table>
<%@include file="create.jsp"%>
</body>
</html>
