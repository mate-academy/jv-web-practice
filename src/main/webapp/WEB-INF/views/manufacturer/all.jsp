<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<style><%@include file="/WEB-INF/style/style.css"%></style>
<body>
    <%@include file="/WEB-INF/includes/header.jsp"%>
    <h2>List of manufacturers</h2>
    <c:if test="${manufacturers.size() == 0}">
        No items yet
    </c:if>
    <c:if test="${manufacturers.size() > 0}">
        <table>
            <tr>
                <td>id</td>
                <td>name</td>
                <td>country</td>
                <td>actions</td>
            </tr>
            <c:forEach items="${manufacturers}" var="manufacturer">
                <tr>
                    <td>${manufacturer.id}</td>
                    <td>${manufacturer.name}</td>
                    <td>${manufacturer.country}</td>
                    <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <hr>
    <h2>Add manufacturer</h2>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name: <input type="text" name="name"><br>
        Country: <input type="text" name="country"><br>
        <button type="submit">Add</button>
    </form>
</body>
</html>
