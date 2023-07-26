<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Creating Car</title>
</head>
<>
<h1>Please enter data of new car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model <label>
    <input type="text" name="model">
</label><br>
    Manufacturer <label>
    <select name="Manufacturers">
         <c:forEach items="${manufacturers}" var="manufacturer">
         <option value="${manufacturer.id}">"${manufacturer.name}" "${manufacturer.country}"</option>
         </c:forEach>
     </select>
</label>
    <button type="submit">Create</button>
</form>
</body>
</html>
