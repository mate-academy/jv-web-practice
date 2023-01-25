<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>All drivers from database</title>
    <style>
        html * {
            font-size: 16px;
            line-height: 1.625;
            color: #000000;
            font-family: Nunito, sans-serif;
        }
    </style>
</head>
<body bgcolor="#ffd700">
<div align="center">
    <h3>DRIVERS LIST</h3>
    <form action="<c:url value="/index"/>" >
        <input type="submit" value="HOME" />
    </form>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
            <table style="with: 80%" border="1">
                <tr>
                    <td>ID </td>
                    <td> NAME </td>
                    <td> LICENSE NUMBER </td>
                    <td> DELETE</td>
                </tr>
                <c:forEach items="${drivers}" var="driver">
                    <tr>
                        <td><c:out value="${driver.id}" /></td>
                        <td><c:out value="${driver.name}" /></td>
                        <td><c:out value="${driver.licenseNumber}" /></td>
                        <td><a href="${pageContext.request.contextPath}/drivers/remove?id=${driver.id}">DELETE</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
</div>
</body>
</html>
