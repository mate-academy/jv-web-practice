<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All drivers</title>
    <link rel="stylesheet" href="/css/styles.css" type="text/css"/>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"/>
<h2>List of all drivers</h2>
<a class="nav-under" href="${pageContext.request.contextPath}/drivers/add">Add a driver</a>
<br><br>
<table class="list">
    <tr class="table-header">
        <td>ID</td>
        <td>Name</td>
        <td>License</td>
        <td>Action</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td style="min-width: 20px"><c:out value="${driver.id}"/></td>
            <td style="min-width: 90px"><c:out value="${driver.name}"/></td>
            <td style="min-width: 120px"><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <a class="delete" href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
