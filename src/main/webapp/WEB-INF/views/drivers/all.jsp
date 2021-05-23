<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Display all drivers</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }

            th {
                text-align: left;
            }
        </style>
    </head>
    <body>
        <table style="width:50%">
            <caption>LIST OF ALL DRIVERS:</caption>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>LICENSE NUMBER</th>
                <th>DELETE</th>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.id}"/></td>
                    <td><c:out value="${driver.name}"/></td>
                    <td><c:out value="${driver.licenseNumber}"/></td>
                    <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
