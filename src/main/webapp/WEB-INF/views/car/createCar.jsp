<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Create new car</title>
    </head>
    <body>
        <h1>Please, fill out the form below:</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            model <input type="text" name="model" required><br>
            <select name="manufacturer_id">
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <option value="${manufacturer.getId()}">${manufacturer.getName()}</option>
                </c:forEach>
            </select>
            <button type="submit">create</button>
        </form>
    </body>
</html>

