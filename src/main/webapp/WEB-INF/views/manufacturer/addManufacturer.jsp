<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Create manufacturer</title>
</head>
<body>
<h1>Please fill the form below</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturer/add">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
