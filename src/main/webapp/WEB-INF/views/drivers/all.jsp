<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Drivers</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>All drivers:</h2>
    <table class="table">
        <tr>
            <td class="td">ID</td>
            <td class="td">NAME</td>
            <td class="td">LICENSE NUMBER</td>
            <td class="td">DELETE</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td class="td"><c:out value="${driver.id}" /></td>
                <td class="td"><c:out value="${driver.name}" /></td>
                <td class="td"><c:out value="${driver.licenseNumber}" /></td>
                <td class="td"><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
