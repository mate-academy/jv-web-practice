<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Manufacturer</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add.jsp">
  Manufacturer Name <input type="text" name="ManufacturerName"><br>
  Manufacturer country <input type="text" name="ManufacturerCountry"><br>
  <button type="submit">Confirm</button>
</form>

</body>
</html>
