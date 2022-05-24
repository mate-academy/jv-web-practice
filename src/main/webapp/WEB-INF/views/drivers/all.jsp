<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>ALL Drivers</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License Number</td>
    </tr>
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"> delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
