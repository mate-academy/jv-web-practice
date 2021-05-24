<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Car</title>
</head>
<body>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
  Model: <input type="text" name="model"><br>
  Manufacturer id: <input type="number" placeholder="Chose id from table below" size="30"
                          name="manufacturer_id"><br>
  <button type="submit">Confirm</button>
</form><br>
<p>
    <a href="${pageContext.request.contextPath}/">
        <button type="submit">MAIN MENU</button>
    </a>
</p>
<br>
<%@include file="manufacturersAll.jsp"%>
</body>
</html>
