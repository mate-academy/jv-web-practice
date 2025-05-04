<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Car</title>
    </head>
    <body>
        <h1>Add car:</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            Manufacturer id: <input type="text" name="manufacturer_id"><br>
            Model : <input type="text" name="model"><br>
            <button type="submit">Add</button>
        </form>
    </body>
</html>
