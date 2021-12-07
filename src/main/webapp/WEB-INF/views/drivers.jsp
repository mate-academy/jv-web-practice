<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
    <h1>Drivers</h1>

    <table>
        <tr>
            <td><h2>Id</h2></td>
            <td><h2>Name</h2></td>
            <td><h2>License number</h2></td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><h2><c:out value="${driver.id}"/></h2></td>
                <td><h2><c:out value="${driver.name}"/></h2></td>
                <td><h2><c:out value="${driver.licenseNumber}"/></h2></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
