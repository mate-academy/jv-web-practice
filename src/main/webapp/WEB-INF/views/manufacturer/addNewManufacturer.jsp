<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register new manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="manufacturerName" placeholder="type manufacturer name"><br>
  Country <input type="text" name="manufacturerCountry" placeholder="type manufacturer country"><br>
  <button type="submit">Register</button>
</form>
</body>
</html>
