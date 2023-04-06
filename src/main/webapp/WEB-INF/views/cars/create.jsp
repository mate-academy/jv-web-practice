<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
    <h2>Create car</h2><br>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
        CarModel <input type="text" name="carModel"><br><br>
        Manufacturer <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}"><c:out value="${manufacturer.name}" /></option>
        </c:forEach>
                     </select><br><br>
        <button type="submit">Create</button>
    </form>
</body>
</html>
