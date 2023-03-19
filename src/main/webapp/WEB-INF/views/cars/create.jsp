<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2><a href="/index">Go to index</a></h2>
<h1>Create new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
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
