<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
    <h1>Create new car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <label for="model">Car model</label><br>
        <input type="text" id="model" name="model"><br>
        <label for="manufacturers">Choose a manufacturer:</label><br>
        <select id="manufacturers" name="manufacturer">
            <c:forEach var="manufacturer" items="${manufacturers}">
                <option value="${manufacturer.id}">${manufacturer.name}</option>
            </c:forEach>
        </select><br>
        <label for="drivers">Choose drivers for car:</label><br>
        <select id="drivers" name="drivers" size="3" multiple>
            <c:forEach var="driver" items="${drivers}">
                <option value="${driver.id}">${driver.name}</option>
            </c:forEach>
        </select><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
