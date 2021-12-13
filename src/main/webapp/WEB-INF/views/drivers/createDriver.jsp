<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../index.jsp"%>
<html>
<head>
  <title>Add new driver</title>
</head>
<body>
<h2>Add new driver</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  Driver Name: <input type="text" name="driver_name"><br><br>
  License Number: <input type="text" name="license_number"><br><br>
  <button type="submit">Create driver</button>
</form>
</body>
</html>