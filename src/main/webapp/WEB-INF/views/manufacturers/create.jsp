<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer creating</title>
</head>
<body>
<h1>Hi. Fill out the form to create a manufacturer ;)</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
