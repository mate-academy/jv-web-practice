<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <H1>ALL DRIVERS</H1>
    <table>
        <tr>
            <td>id</td>
            <td>Name</td>
            <td>LicenseNumber</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><a href="${pageContext.request.contextPath}/driver/delete?id=${driver.id}">
                    delete this Driver
                </a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
