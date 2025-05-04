<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>TAXI SERVICE</title>
</head>
<body>
  <h3>Add manufacturer to DB</h3>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
  Name <input type="text" name="name"><br>
  Country <input type="text" name="country"><br>
  <button type="submit">Create</button>
</form>
  <td><a href="${pageContext.request.contextPath}/service"><- back to service menu</a></td>
</body>
</html>
