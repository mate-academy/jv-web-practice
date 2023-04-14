<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
  <title>Taxi Service</title>
</head>
<body>
<div >
 <jsp:include page="cars.jsp" />
</div>
<br>
<div class="display-div">
  <jsp:include page="drivers.jsp" />
</div>
<div class="display-div">
  <jsp:include page="manufacturers.jsp" />
</div>
</body>
</html>
