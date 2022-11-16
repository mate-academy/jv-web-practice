<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
    <body>
        <h2>Add a car</h2>
        <p>Please input the form bellow and press the Submit button</p>
        <form method="post">
            <label for="model">Model:</label><br>
            <input type="text" id="model" name="model" required><br>
            <label for="manufacturer">Manufacturer:</label><br>
            <select id="manufacturer" name="manufacturer">
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <option value="${manufacturer.id}">${manufacturer.name}</option>
                </c:forEach>
            </select>
            <br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
