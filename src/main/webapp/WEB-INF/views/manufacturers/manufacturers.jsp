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
            background-color: #ff9977;
        }

    </style>
</head>
<body>
<p style="text-align: left">
<form action=manufacturers/add>
    <button>create new manufacturer</button>
</form>
<form action=index>
    <button>go to main menu</button>
</form>
<h1> Table of manufacturers</h1>
<table class="tg">
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>country</td>
        <td></td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.id}" /></td>
        <td><c:out value="${manufacturer.name}" /></td>
        <td><c:out value="${manufacturer.country}"/></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
