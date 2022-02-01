<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create New Car</title>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <label for="manufacturers">Manufacturers:</label><br>
        <select id="manufacturers" name=manufacturer_id>
            <c:forEach items="${manufacturers}" var="manufacturer">
                <option value="${manufacturer.id}">${manufacturer.name}</option>
            </c:forEach>
        </select>
        <br>
        <label for="model">Car model:</label><br>
        <input type="text" id="model" name="model"><br>
        <button type="submit">SUBMIT</button>
        <button type="reset">RESET</button>
    </form>
    <br><a href="${pageContext.request.contextPath}/index">Back to start page</a>
</body>
</html>
