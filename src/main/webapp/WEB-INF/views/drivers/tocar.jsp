<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    h2 {
        text-align: center;
    }
</style>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h2>Select car then add driver to the selected car</h2>
<form align="center" method="post" action="${pageContext.request.contextPath}/drivers/tocar">
    select car <select name="car">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}">${car.model}</option>
    </c:forEach>
</select><br>
        add driver:
        <select name="driver">
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}">${driver.name}</option>
            </c:forEach>
        </select>
        <br/><br/>
        <button align="center" type="submit">Add driver</button>
    </form>
</body>
</html>
