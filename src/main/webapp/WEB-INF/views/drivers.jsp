<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>All taxi drivers</title>
</head>
<body>
    <h1>All drivers!</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE_NUMBER</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
    </table>
    <br><a href="${pageContext.request.contextPath}/index">Back to start page</a>
</body>
</html>
