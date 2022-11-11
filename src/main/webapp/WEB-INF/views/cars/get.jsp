<%@ page import="mate.model.Car" %>
<%@ page import="mate.controller.GetCarController" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="get" action="${pageContext.request.contextPath}/cars/desplayCar">
    Car id<input type="text" name="id">
    <button type="submit" >Confirm</button>
</form>
</body>
</html>
