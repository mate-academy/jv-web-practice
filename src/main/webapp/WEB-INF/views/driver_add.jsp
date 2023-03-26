<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Creating driver</title>
</head>
<body>
<h3>Form for creating driver, fill the form below</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name: <input type="text" name="name"><br>
    License number: <input type="number" name="licenseNumber"><br>
    <button type="submit"> Ok </button>
</form>
</body>
</html>
