<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Manufacturer created</title>
</head>
<body>
<h2>Successfully created manufacturer:</h2>
id: <c:out value="${manufacturer.id}"/><br/>
name: <c:out value="${manufacturer.name}"/><br/>
country: <c:out value="${manufacturer.country}"/><br>
<a href="${pageContext.request.contextPath}/manufacturers">To manufacturers list</a>
</body>
</html>
