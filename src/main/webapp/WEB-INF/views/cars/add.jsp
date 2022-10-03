<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration of car</title>
</head>
<body>
<h1>New car</h1>
<table>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input required type="text" name="model">,<br>
        Manufacturer <input required type="text" name="manufacturer_id">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
