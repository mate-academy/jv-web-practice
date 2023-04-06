<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
  <h1>Create Driver</h1>
  <form method="post" action="${pageContext.request.contextPath}/drivers/create">
    <p>Name: <input type="text" name="name"></p>
    <p>License number: <input type="text" name="license_number"></p>
    <button type="submit">Submit</button>
  </form>
</body>
</html>
