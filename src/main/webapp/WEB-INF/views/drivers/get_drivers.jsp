<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
    <style type="text/css">

        button {
            border: blueviolet;
            border-radius: 7px;
            padding: 10px 25px;
            background: #BBAAAA;
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
            background-color: #ff9977;
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
            background-color: #555aaa;
        }

    </style>
</head>
<body>
<p style="text-align: left">
<form action=create_driver>
    <button>create new driver</button>
</form>
<form action=index>
    <button>go to main menu</button>
</form>
<h1> Table of drivers</h1>
<table class="tg">
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>license_number</td>
        <td></td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
