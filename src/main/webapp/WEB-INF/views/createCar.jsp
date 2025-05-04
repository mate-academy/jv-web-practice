<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a new car</title>
</head>
<body>
<h1>Please fill the form below</h1>
<h3>Requisites of a new car:</h3>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model <input type="text" name="model"><br>
    <br>
    Manufacturer ID# <input type="number" name="manufacturerId" value="0"><br>
    <br>or<br>
    Manufacturer name <input type="text" name="manufacturerName"><br>
    Country <input type="text" name="country"><br><br>
    <button type="submit">Add</button>
</form>
</body>
</html>
