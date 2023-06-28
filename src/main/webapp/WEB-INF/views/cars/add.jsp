<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WEB PRACTICE</title>
    <style>
        <%@include file="/WEB-INF/css/style.css" %>
    </style>
</head>
<body>
<%@include file="/WEB-INF/views/navbar/navbar.jsp" %>
<h1>CREATE CAR</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <label>Model: <input type="text" required name="model"></label>
    <label>Manufacturer: <select name="manufacturer" required id="manufacturer">
        <option value="">--Choose a manufacturer--</option>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.getId()}">
                    ${manufacturer.getId()}: ${manufacturer.getName()}
            </option>
        </c:forEach>
    </select>
    </label>

    <label>Driver:
        <select name="driver" id="driver">
            <option value="">--Choose a driver--</option>
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.getId()}">${driver.getId()}: ${driver.getName()}</option>
            </c:forEach>
        </select>
    </label>

    <button type="submit">Create</button>
</form>

</body>
</html>
