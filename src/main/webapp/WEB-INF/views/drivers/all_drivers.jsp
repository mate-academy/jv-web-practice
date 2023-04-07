<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Our driver-team:</title>

    <br><br>
    <a href="${pageContext.request.contextPath}/drivers/create">
        <input type="button" value="Add new driver" />
    </a><br><br>

    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Driver License</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
            </tr>
        </c:forEach>
    </table>

    <br><br>
    <form method="post" action="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
        Choose driver to delete <select name="driver_id">
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}">
                <c:out value="${driver.name}" />
                -
                <c:out value="${driver.licenseNumber}" />
            </option>
        </c:forEach>
    </select> <br><br>
        <button type="submit">Bye-bye</button>
    </form>

    <br><br>
</head>
<body>

</body>
</html>
