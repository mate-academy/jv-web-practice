<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Adding a new car</title>
    </head>
    <body>
        List of manufacturers:<br>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <c:out value="ID: ${manufacturer.id}, "/>
            <c:out value="name: ${manufacturer.name}, "/>
            <c:out value="country: ${manufacturer.country}"/><br>
        </c:forEach><br><br>
        Add a new car:
        <form method="post" action="${pageContext.request.contextPath}/cars/new">
            Model <input type="text" name="model"><br>
            Manufacturer ID <input type="text" name="manufacturer_id"><br>
            <button type="submit">Add</button><br>
        </form>
    </body>
</html>
