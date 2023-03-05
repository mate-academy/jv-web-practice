<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/Car/creat">
    Model         <input type="text" name = "model">  <br><br>
    Manufacturer name     <input type="text" name = "manufacturer"> <br><br>
    Country               <input type="text" name = "country"> <br><br>
    <br><br>
  <button type="submit" > ADD car without driver </button>
</form>
</body>
</html>
