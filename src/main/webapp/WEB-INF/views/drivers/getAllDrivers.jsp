<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
    <h1>List of drivers</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>LICENSE NUMBER</th>
            <th>DELETE</th>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td>
                    <form method="post" action="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                        <button type="submit">DELETE</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="${pageContext.request.contextPath}/">Back to main page</a>
</body>
</html>
