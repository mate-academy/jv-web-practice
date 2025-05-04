
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new manufacturer</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
  <table>
    <tr>
      <td>Name: </td>
      <td><input type="text" name="name"> </td>
    </tr>
    <tr>
      <td>Country: </td>
      <td><input type="text" name="country"> </td>
    </tr>
  </table>
  <button type="submit">Create manufacturer</button>
</form>
</body>
</html>
