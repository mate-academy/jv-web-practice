<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: marinakusniruk
  Date: 03.08.2023
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Choose parameters of a new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model<label><input type="text" name="model"></label><br>
    Manufacturer<label>
    <select name="Manufacturers">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}"> "${manufacturer.name}" "${manufacturer.country}"</option>
        </c:forEach>
    </select>
</label>
    <button type="submit">Create</button>
</form>
</body>
</html>
