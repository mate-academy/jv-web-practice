<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
  <title>Creating a manufacturer</title>
</head>
<body>
<h1>Please the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  name <input type="text" name="name"><br>
  country <input type="text" name="country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
