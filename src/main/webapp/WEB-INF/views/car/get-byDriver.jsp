<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Get Cars</title>
</head>
<body>
<h1>Please enter driver id:</h1>

<form method="post" action="${pageContext.request.contextPath}/car/get-byDriver">
  Driver id <input type="text" name="Id"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
