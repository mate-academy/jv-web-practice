<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
      Manufacturer name<input name="name" required><br>
      Manufacturer country<input name="country" required><br>
      <button type="submit">confirm</button>
  </form>
</body>
</html>
