<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of drivers</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<h1>List of drivers</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>license number</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>${driver.id}</td>
            <td>${driver.name}</td>
            <td>${driver.licenseNumber}</td>
            <td>
                <form method="post" action="${pageContext.request.contextPath}/drivers/delete">
                    <input type="hidden" name="id" value="${driver.id}" />
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
