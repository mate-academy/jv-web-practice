<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
      Model <input type="text" name="model"><br>
      Manufacturer <input type="text" name="manufacturer"><br>
      <button type="submit">Confirm</button>
</form>
</body>
</html>
