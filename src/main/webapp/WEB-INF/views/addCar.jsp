<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>add driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  <div style="width: 40%"><p>Enter model <input name="model" type="text" style="float: right"></p></div>
  <div style="width: 40%"><p>Enter manufacturer id <input name="manufacturerId" type="text" style="float: right"></p></div>
  <input name ="button" type="submit" value="ADD">
</form>
</body>
</html>
