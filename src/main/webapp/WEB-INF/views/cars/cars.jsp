<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
    <style type="text/css">
        button {
            border: blueviolet;
            border-radius: 7px;
            padding: 10px 25px;
            background: #999999;
            cursor: pointer;
            text-transform: uppercase;
            font-weight: bold;
            color: white;
        }
        .tg {
            border-collapse: collapse;
            border-spacing: 3px;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 3px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #bbb;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 3px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #ff9977;
        }
    </style>
</head>
<body>
<p style="text-align: left">
    <form action=cars/add>
    <button>create new car</button>
</form>
<form action=cars/drivers/add>
    <button>add driver to car</button>
</form>
<form action=index>
    <button>go to main menu</button>
</form>
<h1>choose workspace</h1>
<table class="tg">
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Drivers</td>
        <td></td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}"/></td>
            <td>
                <table class="tg">
                    <tr>
                        <td>name</td>
                        <td>license_number</td>
                    </tr>
                    <c:forEach items="${car.getDrivers()}" var="driver">
                    <tr>
                        <td><c:out value="${driver.getName()}"/></td>
                        <td><c:out value="${driver.getLicenseNumber()}"/></td>
                        </c:forEach>
                    </tr>
                </table>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete</a></td>
            </c:forEach>
        </tr>
</table>
</body>
</html>
