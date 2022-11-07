<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Manufacturer created</title>
</head>
<body>
<h2>Successfully created manufacturer:</h2>
id: <c:out value="${manufacturer.id}"/><br/>
name: <c:out value="${manufacturer.name}"/><br/>
country: <c:out value="${manufacturer.country}"/>
</body>
</html>
