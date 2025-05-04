<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
    <h1><a href="${pageContext.request.contextPath}/">Taxi service</a></h1>
    <h2>Create car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Choose manufacturer<br>
        <table>
            <tr>
                <td>Name</td>
                <td>Country</td>
                <td></td>
            </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.name}"/> </td>
                <td><c:out value="${manufacturer.country}"/> </td>
                <td><input type="radio" name="manufacturer_id" value="${manufacturer.id}" required="required"></td>
            </tr>
        </c:forEach>
        </table>
        <br>
        Set car
        <br>
        <table>
            <tr>
                <td>Car model</td>
                <td><input type="text" name="car_model" required="required"></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Create car</button> </td>
            </tr>
        </table>
    </form>
</body>
</html>
