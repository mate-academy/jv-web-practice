<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer <select name="manufacturer_id">
                    <c:forEach items="${manufacturers}" var="manufacturer">
                        <option value="${manufacturer.id}">${manufacturer.name}</option>
                    </c:forEach>
</select><br>
    Model <input type="text" name="model" required><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
