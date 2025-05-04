<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer creation</title>
</head>
<body>
<h2>Create manufacturer:</h2>
<form method = "post"  action = "${pageContext.request.contextPath}/manufacturers/create">
  Name <input type = "text" name = "name"><br>
  Country <input type="text" name = "country"><br>
  <button type="submit">Create</button>
    <button type="reset">Reset</button>
</form>
</body>
</html>
