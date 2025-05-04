<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add car</title>
    </head>
    <body>
        <h1>Add new car</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            <div>
                <label>Model:</label>
                <input type="text" name="model"/>
            </div>
            <div>
                <label>Input manufacturer id:</label>
                <input type="number" name="manufacturer_id">
            </div>
            <div>
                <button type="submit">Add car</button>
            </div>
        </form>
    </body>
</html>
