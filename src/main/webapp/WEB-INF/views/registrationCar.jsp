<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/registration">
  Model <input type="text" name="model"><br>
  Manufacturer ID<input type="text" name="manufacturerId"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
