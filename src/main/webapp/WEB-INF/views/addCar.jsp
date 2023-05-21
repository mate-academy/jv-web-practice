<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Please fill in the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Car model <input type="text" name="model"><br>
    Manufacturer
    <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">
                <c:out value="${manufacturer.name}" />
            </option>
        </c:forEach>
    </select><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
