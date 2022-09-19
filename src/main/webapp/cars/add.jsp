<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h2>Create new car</h2>
<table>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        Model <input required type="text" name="model">,<br>
        Manufacturer ID <input required type="text" name="manufacturer_id">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
