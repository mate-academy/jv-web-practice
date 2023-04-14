<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>creating a new car</h1>
<p>fill out the form below</p>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  Model <input type="text" name="model"><br>
  Manufacturer id <input type = "text" name="manufacturer_id"><br>
  <button type="submit">Confirm</button>
</form>
<form> <button type="submit" formaction="/index">Home</button> </form>
</body>
</html>
