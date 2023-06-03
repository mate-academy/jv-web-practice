<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New car</title>
</head>
<body>
<h1>Add new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/new">
    Model: <input type="text" name="model"></br>
    Manufacturer id: <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option><c:out value="${manufacturer.id}" /></option>
    </c:forEach>
</select>
</br>
  <button>Create</button>
</form>
</body>
</html>
