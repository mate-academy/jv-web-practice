<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Car creating</title>
</head>
<body>
<h1>Create a new car:</h1>
<form action="${pageContext.request.contextPath}/cars/create" method="post">
    <label for="model">Car model:</label>
    <input type="text" id="model" name="model" required><br><br>
    <label for="manufacturer_id">Choose a manufacturer:</label>
    <select name="manufacturer_id" id="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value=${manufacturer.getId()}>${manufacturer.getName()}</option>
        </c:forEach>
    </select><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
