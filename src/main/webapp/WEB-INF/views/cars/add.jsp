<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create car</title>
</head>
<body>
<h1>Create car without driver</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    <div>
        Model: <input type="text" name="model">
    </div>

    <div>
        Manufacturer ID: <select type="number" name="manufacturer_id">
        <c:forEach var="manufacturer" items="${manufacturers.id}">
            <option value="<c:out value="${manufacturer.id}"/>"><c:out value="${manufacturer.name}"/></option>
        </c:forEach>
    </select>
    </div>

    <div>
        <button type="submit">Confirm</button>
    </div>
  </form>
</body>
</html>
