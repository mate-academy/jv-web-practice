<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add new car</title>
</head>
<body>
<h1>Add new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <input type="text" name="model"><br>
    Manufacturer    <select id="manufacturerId" name="manufacturerId">
                        <c:forEach items="${manufacturers}" var="manufacturer">
                            <option value="${manufacturer.id}">${manufacturer.name}</option>
                        </c:forEach>
                    </select><br>
    <button type="submit">Save</button>
</form>
<a href="${pageContext.request.contextPath}/cars/cars">Back</a>
<a href="${pageContext.request.contextPath}/index">Home</a>
</body>
</html>
