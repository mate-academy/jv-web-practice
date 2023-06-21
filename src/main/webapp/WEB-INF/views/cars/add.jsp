<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add new car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
  <table>
    <tr>
      <td>Car model</td>
      <td><input name="model" type="text"></td>
    </tr>
    <tr>
      <td>Car manufacturer id</td>
      <td><input name="manufacturerId" type="number"></td>
    </tr>
    <tr>
      <td></td>
      <td><button type="submit">Save</button></td>
    </tr>
  </table>
</form>
</body>
</html>
