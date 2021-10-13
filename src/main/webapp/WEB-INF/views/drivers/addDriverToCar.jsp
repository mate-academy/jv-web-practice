<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Please fill the fields below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
    Driver <label>
    <select name="driver">
    <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.getId()}">${driver.getName()}</option>
    </c:forEach>
</select>
</label>
    Car <label>
    <select name="car">
    <jsp:useBean id="cars" scope="request" type="java.util.List"/>
    <c:forEach items="${cars}" var="car">
        <option value="${car.getId()}">${car.getModel()}</option>
    </c:forEach>
</select>
</label>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
