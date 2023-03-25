<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
    <h2>Create car</h2>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
      <label for="model">Model:</label><br>
      <input type="text" id="model" name="model" required><br>
      <label for="manufacturerId">Manufacturer id:</label><br>
      <input type="number" id="manufacturerId" name="manufacturerId" required>
      <br>
      <button type="submit">Create new car</button>
    </form>
</body>
</html>
