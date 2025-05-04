<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
    <h1>List of manufacturers</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>COUNTRY</th>
            <th>DELETE</th>
        </tr>

        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}" /></td>
                <td><c:out value="${manufacturer.name}" /></td>
                <td><c:out value="${manufacturer.country}" /></td>
                <td>
                    <form method="post" action="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
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
