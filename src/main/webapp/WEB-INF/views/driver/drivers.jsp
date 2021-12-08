<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/head_menu.jsp"></jsp:include>
    <jsp:include page="add_driver_form.jsp"></jsp:include>
    <hr>
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
                <td><a href="/drivers/delete?id=${driver.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
