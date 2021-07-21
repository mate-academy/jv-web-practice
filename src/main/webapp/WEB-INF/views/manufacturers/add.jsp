<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
<h1>Please fill all fields and press ENTER</h1>
<form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
  Name <input type="text" name="manufacturer_name"><br>
  Country <input type="text" name="manufacturer_country"><br>
  <button type="submit">ENTER</button>
</form>

</body>
</html>
