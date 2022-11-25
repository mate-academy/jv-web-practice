<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
        Model <label>
        <input type="text" name="car_model" value="">
    </label>
        <label>
            <select name="manufacturer_id">
                <option value="0">Chose manufacturer</option>
                <jsp:useBean id="manufacturer" scope="request" type="java.util.List"/>
                <c:forEach items="${manufacturer}" var="manufacturer">
                    <option value="${manufacturer.id}">${manufacturer.name}
                        / ${manufacturer.country}</option>
                </c:forEach>
            </select>
        </label>
        <button type="submit">Create a car</button>
    </form>
</body>
</html>
