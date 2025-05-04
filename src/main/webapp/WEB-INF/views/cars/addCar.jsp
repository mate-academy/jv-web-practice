
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h1>Fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  <label for="model">Car model:</label><br>
  <input type="text" id="model" name="model"><br>
  <label for="manufacturer">Manufacturer:</label><br>
  <input type="text" id="manufacturer" name="manufacturer">
  <input type="submit" value="Add car">
</form>
</body>
</html>
