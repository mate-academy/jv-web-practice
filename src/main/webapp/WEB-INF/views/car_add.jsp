<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating car</title>
</head>
<body>
<h3>Form for creating car, fill the form below</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model"><br>
    Manufacture ID: <input type="number" name="manufacturerId"><br>
    <button type="submit"> Ok </button>
</form>
</body>
</html>