<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<h1>Create new manufacturer</h1>
<form method = "post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type = 'submit'>Confirm and submit</button>
</form>
    <a href="${pageContext.request.contextPath}/index">return to home page</a><br>
</body>
</html>
