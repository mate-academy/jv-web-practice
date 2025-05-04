<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<h1>Adding driver to the car</h1>
<p>fill out the form below</p>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
  Driver id <input type="number" name="driver_id"><br>
  Car id <input type="number" name="car_id"><br>
  <button type="submit">Confirm</button>
</form>
<form><button type="submit" formaction="/index">Home</button>  </form>
</body>
</html>
