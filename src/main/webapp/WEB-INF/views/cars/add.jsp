<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create new car</h1>
<c:if test = "${empty manufacturers}">
    <h3>We have no manufacturers yet. <a href="${pageContext.request.contextPath}/manufacturers/add">Create one</a> first.</h3><br>
</c:if>
<c:if test = "${!empty manufacturers}">
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <label for="manufacturers">Manufacturer:</label><br>
        <select id="manufacturers" name=manufacturer_id>
            <c:forEach items = "${manufacturers}" var = "manufacturer">
                <option value="${manufacturer.id}">${manufacturer.name}</option>
            </c:forEach>
        </select>
        <br>
        <label for="model">Car model:</label><br>
        <input type="text" id="model" name="model"><br>
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </form>
</c:if>
<br><a href="${pageContext.request.contextPath}/index">Back to index page</a>
</body>
</html>
