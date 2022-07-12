<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Add car</title>
</head>
<body>
<h1>Please, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  Model<input type="text" name="model"><br>
  Manufacturer ID<input type="text" name="manufacturer_id"><br>
  <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to the main page </a></p>
</body>
</html>
