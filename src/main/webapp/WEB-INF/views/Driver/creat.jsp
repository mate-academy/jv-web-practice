
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver</title>
  <form method="post" action="${pageContext.request.contextPath}/Driver/creat">
     Driver name    <input type="text" name = "name">  <br><br>
     license Number <input type="text" name = "licenseNumber">  <br><br>
    <button type="submit" > ADD driver </button>
  </form>
</head>
<body>

</body>
</html>
