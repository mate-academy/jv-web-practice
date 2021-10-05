<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all cars</title>
    <style>
        body {
            background: #DFE2ED;
            font-family: Gilroy, Arial, sans-serif;
        }
        .center {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            padding: 10px;
            background: #E95C41;
            border-radius: 1rem;
            text-align: center;
        }
        h1, h3 {
            color: #ffffff;
        }
        table {
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #646464;
            padding: 5px;
        }
    </style>
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
</head>
<body>
<div class="center">
    <h1>Cars list:</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>Model</td>
            <td>Manufacturer</td>
            <td>Drivers</td>
            <td>Action</td>
        </tr>
        <c:forEach items="${cars}" var="car">
            <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
                <td><c:out value="${car.manufacturer.name}" /></td>
                <td><c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" />&nbsp;<c:out value="${driver.licenseNumber}" /><br/></c:forEach>
                </td>
                <td>
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                        <button>Delete car</button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table><br><br>
    <a href="${pageContext.request.contextPath}/"><button>Main page</button></a>
</div>
</body>
</html>
