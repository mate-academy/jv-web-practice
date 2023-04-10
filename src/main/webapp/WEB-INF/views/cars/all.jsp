<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <link href="${pageContext.request.contextPath}/resources/css/bulma.min.css" rel="stylesheet" type="text/css">
        <meta charset="UTF-8">
        <title>All cars list</title>
    </head>
    <body>
        <div class="columns">
            <div class="column is-5 is-offset-1">
            <h1 class="title">List of all cars:</h1>
                <table class="table">
                    <thead>
                    <tr>
                        <td>ID</td>
                        <td>Model</td>
                        <td>Manufacturer</td>
                        <td>Drivers</td>
                    </tr>
                    <thead>
                    <tbody>
                    <c:forEach var="car" items="${cars}">
                        <tr>
                        <td>${car.id}</td>
                        <td>${car.model}</td>
                        <td>${car.manufacturer.name}</td>
                        <td>
                            <c:forEach var="driver" items="${car.drivers}">
                                ${driver.name}<br>
                            </c:forEach>
                        </td>
                        <td><a href="${pageContext.request.contextPath}/cars/adddriver?id=${car.id}">add driver</a></td>
                        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete car</a></td>
                        </tr>
                    </c:forEach>
                    <tbody>
                </table>
                <nav class="breadcrumb" aria-label="breadcrumbs">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index">Main page</a></li>
                    <li><a href="${pageContext.request.contextPath}/cars/register">Register car</a><br></li>
                </ul>
                </nav>
            </div>
        </div>
    </body>
</html>