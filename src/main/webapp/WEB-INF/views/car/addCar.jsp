<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register your car</title>
</head>
<body>
<h1>Please, fill the empty fields</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"> <br>
    Manufacturer Id
    <select name="manufacturer_id">
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
