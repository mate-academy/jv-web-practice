<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
    <jsp:include page="/WEB-INF/views/head_menu.jsp"></jsp:include>
    <jsp:include page="add_manufacturer_form.jsp"></jsp:include>
    <hr>
    <h1>Manufacturers</h1>
    <table>
        <tr>
            <td><h2>Id</h2></td>
            <td><h2>Name</h2></td>
            <td><h2>Country</h2></td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><h2><c:out value="${manufacturer.id}"/></h2></td>
                <td><h2><c:out value="${manufacturer.name}"/></h2></td>
                <td><h2><c:out value="${manufacturer.country}"/></h2></td>
                <td><a href="/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
