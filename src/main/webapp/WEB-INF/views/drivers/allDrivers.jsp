<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        h1, table, th, td {
            border: 1px solid black;
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
            width: 500px;
            text-align: center;
            font-size: 20px;
        }
    </style>
</head>
<head>
    <title>Get all drivers </title>
</head>
<body>
<h1>List of drivers</h1>
        <table>
         <tr>
             <td>ID</td>
             <td>NAME</td>
             <td>LICENSE_NUMBER</td>
             <td>DELETE</td>
         </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?id=${driver.id}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
