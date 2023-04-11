<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating driver</title>
</head>
<body>
<h1>Hi. Fill out the form to create a driver ;)</h1>

<form method="post" action="${pageContext.request.contextPath}/drivers/create">
  Name <input type="text" name="name"><br>
  License number <input type="text" name="licenseNumber"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
