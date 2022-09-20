<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h3> Create Car </h3>
<form action="${pageContext.request.contextPath}/cars/create" method="post">
  <table style="width: 20%">
    <tr>
      <td>Model</td>
      <td><input type="text" name="model" required/></td>
    </tr>
    <tr>
      <td>Manufacturer</td>
      <td><input type="text" name="manufacturerId" required/></td>
    </tr>
  </table>
  <input type="submit" value="Create" />
</form>
</body>
</html>
