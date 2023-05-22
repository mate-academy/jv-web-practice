<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Adding new car</title>
</head>
<body>
<h1>Please fill out the form below to register a car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model" required><br>
    Manufacturer:
    <select name="manufacturer_id">
        <jsp:useBean id="manufacturersList" scope="request" type="java.util.List"/>
        <c:forEach items="${manufacturersList}" var="manufacturer">
            <option value="${manufacturer.id}">
                    ${manufacturer.name}
            </option>
        </c:forEach>
    </select>
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>






