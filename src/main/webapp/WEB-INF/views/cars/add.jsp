<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<style>
    h2 {
        text-align: center;
    }
</style>
<head>
    <title>Create new car</title>
</head>
<body>
<h2>Please fill the form below</h2>
<form align="center" method="post" action="${pageContext.request.contextPath}/cars/add">
    <form action="list" method="post">
        select manufacturer:
        <select name="manufacturer">
            <c:forEach items="${manufacturers}" var="manufacturer">
                <option value="${manufacturer.id}">${manufacturer.name}</option>
            </c:forEach>
        </select>
        <br/><br/>
        car model <input type="text" name="model"><br>
        <button align="center" type="submit">Add car</button>
    </form>
</form>
</body>
</html>

