<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Drivers</title>
</head>

<body>
    <h2>Drivers list</h2>
    <form action="<c:url value="/index"/>" >
        <input type="submit" value="Home" />
    </form>
    <form action="<c:url value="/drivers/create"/>" >
        <input type="submit" value="New Driver" />
    </form>
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>License number</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td>
                    <a href="${pageContext.request.contextPath}/drivers/delete?driver_id=${driver.id}">Delete</a>
                    <a href="${pageContext.request.contextPath}/drivers/update?driver_id=${driver.id}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
