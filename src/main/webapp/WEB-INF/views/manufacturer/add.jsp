<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Add manufacturer</title>
</head>
<body>
<h1>Please, fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name<input type="text" name="name"><br>
  Country<input type="text" name="country"><br>
  <button type="submit">Confirm</button>
</form>
<p><a href="${pageContext.request.contextPath}/index">Return to the main page </a></p>
</body>
</html>
