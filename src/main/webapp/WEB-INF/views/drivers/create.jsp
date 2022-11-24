<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a driver</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Driver name <input type="text" name="name"><br>
  Driver's license number <input type="text" name="license_number"><br>
  <button type="submit">Submit</button>
</form>
</body>
</html>
