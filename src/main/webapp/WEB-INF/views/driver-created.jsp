<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver created</title>
</head>
<body>
<h2>Successfully created driver:</h2>
id: <c:out value="${driver.id}"/><br/>
name: <c:out value="${driver.name}"/><br/>
license number: <c:out value="${driver.licenseNumber}"/><br>
<a href="${pageContext.request.contextPath}/drivers">To drivers list</a>
</body>
</html>
