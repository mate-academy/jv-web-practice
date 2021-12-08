<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Driver</title>
</head>
<body>
<h1> Create driver:</h1>
<form method = "post" action="${pageContext.request.contextPath}/drivers/create" >
  Name <input type="text" name="driverName"><br>
  LicenseNumber <input type="text" name="licenseNumber"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
