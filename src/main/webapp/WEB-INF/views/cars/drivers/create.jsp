<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver creation</title>
</head>
<body>
<h2>Create driver:</h2>
<form method = "post"  action = "${pageContext.request.contextPath}/drivers/create">
  Name <input type = "text" name = "name"><br>
  License number <input type="text" name = "licenseNumber"><br>
  <button type="submit">Create</button>
    <button type="reset">Reset</button>
</form>
</body>
</html>
