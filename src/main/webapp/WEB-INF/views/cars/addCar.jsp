<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer:
        <select name="manufacturer">
            <c:forEach items="${manufacturers}" var="manufacturer">
                <option><c:out value="${manufacturer.name}"/></option>
            </c:forEach>
        </select><br>
    Model: <input type="text" name="model"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
