<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Add new driver</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
  <table>
    <tr>
      <td>Driver name</td>
      <td><input name="name" type="text"></td>
    </tr>
    <tr>
      <td>Driver license number</td>
      <td><input name="licenseNumber" type="text"></td>
    </tr>
    <tr>
      <td></td>
      <td><button type="submit">Save</button></td>
    </tr>
  </table>
</form>
</body>
</html>
