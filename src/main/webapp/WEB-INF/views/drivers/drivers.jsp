<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<table border="1" >
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${list_drivers}" var="driver">
        <tr>
            <th><c:out value="${driver.id}"/></th>
            <th><c:out value="${driver.name}"/></th>
            <th><c:out value="${driver.licenseNumber}"/></th>
        </tr>
    </c:forEach>

</table>
</br>
<a href="${pageContext.request.contextPath}/index">Back to main menu</a>
</body>
</html>
