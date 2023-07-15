<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Manufacturer</title>
</head>
<body>
<h1>Update manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/update">
  Name <input type="text" name="manufacturer_name"><br>
  Country <input type="text" name="manufacturer_country"><br>
  Id <input type="number" name="manufacturer_id"><br>
  <button type="submit">Update</button>
</form>
</body>
</html>
