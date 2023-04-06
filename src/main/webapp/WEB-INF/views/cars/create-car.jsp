<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp"%><br>
<h3>Fill out the form to create the new car</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer <select name="manufacturer_id">
    <option value="">-- Choose Manufacturer --</option>
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.id}" />.
            <c:out value="${manufacturer.name}" />
        </option>
    </c:forEach>
</select><br>
    <button type="submit">Add car</button>
</form>
</body>
</html>
