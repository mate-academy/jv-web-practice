<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display drivers</title>
    <style type="text/css">
        TABLE {
            width: 300px;
            border-collapse: collapse;
        }

        TD, TR {
            padding: 3px;
            border: 1px solid black;
        }
    </style>
</head>
<body>
<h1>All drivers</h1>
<table>
    <th> ID</th>
    <th> NAME</th>
    <th> LICENCE NUMBER</th>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
