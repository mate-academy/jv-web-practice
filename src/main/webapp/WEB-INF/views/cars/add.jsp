<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Add car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Name <input type="text" name="model"><br>
    Manufacturer
    <select name="manufacturerId">
        <c:forEach items="${manufacturers}" var = "manufacturer">
                <option value="${manufacturer.id}"><c:out value="${manufacturer.name}"/>: <c:out value="${manufacturer.country}"/> </option>
        </c:forEach>
    </select><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
