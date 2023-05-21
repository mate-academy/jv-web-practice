<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}/home">
      <input type="button" value="Home" />
    </a><br><br>
    <a href="${pageContext.request.contextPath}/manufacturers">
      <input type="button" value="Manufacturers" />
    </a><br><br>
    <a href="${pageContext.request.contextPath}/drivers">
      <input type="button" value="Drivers" />
    </a><br><br>
    <a href="${pageContext.request.contextPath}/cars">
      <input type="button" value="Cars" />
    </a><br>
</body>
</html>
