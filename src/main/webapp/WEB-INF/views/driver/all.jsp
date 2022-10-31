<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All drivers</title>
</head>
<style><%@include file="/WEB-INF/style/style.css"%></style>
<body>
    <%@include file="/WEB-INF/includes/header.jsp"%>
    <h2>List of drivers</h2>
    <c:if test="${drivers.size() == 0}">
        No items yet
    </c:if>
    <c:if test="${drivers.size() > 0}">
        <table>
            <tr>
                <td>id</td>
                <td>name</td>
                <td>license_number</td>
                <td>actions</td>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td>${driver.id}</td>
                    <td>${driver.name}</td>
                    <td>${driver.licenseNumber}</td>
                    <td><a href="/drivers/delete?id=${driver.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <hr>
    <h2>Add driver</h2>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name: <input type="text" name="name"><br>
        License number: <input type="text" name="licenseNumber"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
