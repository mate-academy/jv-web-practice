<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
  <form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
      Manufacturer name: <input type="text" name="name"><br>
      Manufacturer country : <input type="text" name="country"><br>
      <button type="submit">Create Manufacturer</button>
  </form>
</body>
</html>
