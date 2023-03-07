
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
  Manufacturer name     <input type="text" name = "name" required> <br><br>
  Country               <input type="text" name = "country" required> <br><br>

  <button type="submit"> ADD Manufacturer </button>
</form>

</body>
</html>
