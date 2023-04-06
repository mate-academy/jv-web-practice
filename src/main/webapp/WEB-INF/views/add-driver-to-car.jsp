<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cars</title>
</head>
<body>
<h1>Fill out the form to add driver to car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/addDriver">
    Car <select name="car_id">
    <option value="">-- Choose Car --</option>
    <c:forEach items="${cars}" var="car">
    <option value="${car.id}">
        <c:out value="${car.id}" />.
        <c:out value="${car.model}" />
    </option>
    </c:forEach>
</select><br>
    Driver <select name="driver_id">
    <option value="">-- Choose driver for car --</option>
    <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">
            <c:out value="${driver.id}" />.
            <c:out value="${driver.name}" />,
             <c:out value="${driver.licenseNumber}" />
        </option>
    </c:forEach>
</select><br>
    <button type="submit">Add driver to car</button>
</form>
</body>
</html>
