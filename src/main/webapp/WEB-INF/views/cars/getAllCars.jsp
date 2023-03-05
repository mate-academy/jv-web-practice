<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
    <h1>List of cars</h1>
        <table>
            <tr>
                <th>CAR ID</th>
                <th>MODEL</th>
                <th>MANUFACTURER</th>
                <th>DRIVERS</th>
                <th>DELETE</th>
            </tr>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td><c:out value="${car.id}" /></td>
                    <td><c:out value="${car.model}" /></td>
                    <td><c:out value="${car.manufacturer}" /></td>
                    <td><c:out value="${car.drivers}" /></td>
                    <td>
                        <form method="post" action="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
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
