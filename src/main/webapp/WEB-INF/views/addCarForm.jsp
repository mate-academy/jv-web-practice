<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index">Home</a>
<h1>New car:</h1>
<form method="post" action="/cars/add">
    Model <input type="text" name="model"><br>
    Manufacturer <select name="manufacturerId">
                        <c:forEach var="manufacturer" items="${manufacturers}">
                            <option
                                    value="${manufacturer.getId()}">
                                    ${manufacturer.getName()}
                            </option>
                        </c:forEach>
                 </select><br>
    <button type="submit">Add</button>
</form>
<a href="/cars">back to cars</a>
</body>
</html>
