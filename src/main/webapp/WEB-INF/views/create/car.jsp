<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    h2 {
        text-align: center;
    }
</style>
<head>
    <title align="center">Create new car</title>
</head>
<body>
<h2>Please fill the form below</h2>
<form align="center" method="post" action="${pageContext.request.contextPath}/create/car">
    car model <input type="text" name="model"><br>
    <form action="list" method="post">
        Select manufacturer:
        <select name="manufacturer">
            <c:forEach items="${manufacturers}" var="manufacturer">
                <option value="${manufacturer.id}">${manufacturer.name}</option>
            </c:forEach>
        </select>
        <br/><br/>
        <button align="center" type="submit">Add car</button>
    </form>
</form>
</body>
</html>

