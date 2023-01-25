<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List all drivers</title>
</head>
<body>
<h1>List all drivers</h1>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>license number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/index">main page</a></p>
</body>
</html>
