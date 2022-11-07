<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Driver created</title>
</head>
<body>
<h2>Successfully created driver:</h2><br/>
id: <c:out value="${driver.id}"/><br/>
name: <c:out value="${driver.name}"/><br/>
license number: <c:out value="${driver.licenseNumber}"/>
</body>
</html>
