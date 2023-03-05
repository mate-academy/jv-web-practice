
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturer/creat">
  Manufacturer name     <input type="text" name = "name"> <br><br>
  Country               <input type="text" name = "country"> <br><br>

  <button type="submit"> ADD Manufacturer </button>
</form>

</body>
</html>
