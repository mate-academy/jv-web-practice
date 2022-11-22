<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturer form</title>
</head>
<body>
<form method = "POST" action = "${pageContext.request.contextPath}/manufacturer/create">
  Name: <input type = "text" name = "name"><br />
  License number: <input type = "text" name = "license_number"/>
  <input type = "submit" value = "Submit" />
</form>
</body>
</html>
