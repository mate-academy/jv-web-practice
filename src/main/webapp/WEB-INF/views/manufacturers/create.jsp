<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>Create Manufacturer</title>
</head>
<body>
<h1>Enter data of a new manufacturer</h1>
<form method="post" action="${pageContext.request.contexPath}/manufacturers/create">
  name<label>
  <input type="text" name="name">
</label><br>
  country<label>
  <input type="text" name="country">
</label><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
