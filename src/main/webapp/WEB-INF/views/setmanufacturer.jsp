<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<table>
    <h1>Set manufacturer for car:</h1>
    <table>
        <tr>
            <td>id</td>
            <td>name</td>
            <td>manufacturer</td>
            <td>country</td>

        </tr>
        <tr>
            <td>${car.id}</td>
            <td>${car.model}</td>
            <td>${car.manufacturer.name}</td>
            <td>${car.manufacturer.country}</td>
        </tr>
    </table>
    <hr>
    <table>
    <tr>
        <td>id</td>
        <td>name</td>
        <td>country</td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><c:out value="${manufacturer.id}"/></td>
            <td><c:out value="${manufacturer.name}"/></td>
            <td><c:out value="${manufacturer.country}"/></td>
            <td>
                <a href="../cars/car?car_id=${car.id}&manufacturer_id=${manufacturer.id}">Select</a>
            </td>
        </tr>
    </c:forEach>
    </table>
<%@include file="includes/footer.jsp" %>
