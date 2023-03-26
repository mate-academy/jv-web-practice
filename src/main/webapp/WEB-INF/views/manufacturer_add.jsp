<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Creating manufacture</title>
</head>
<body>
<h3>Form for creating manufacture, fill the form below</h3>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Manufacturer: <input type="text" name="manufacturer"><br>
  Country: <input type="text" name="country"><br>
  <button type="submit"> Ok </button>
</form>
</body>
</html>
