<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create Car</title>
</head>
<body>
<h1>    Please fill form </h1>

<form method="post" action="${pageContext.request.contextPath}/cars/add">
   Model   <input type="text" name="model"><br>


    Choose manufacturer
      <c:forEach items="${manufacturers}" var="manufacturer">
        <p><input type="radio" name="manufacturer" value = ${manufacturer.name} > ${manufacturer.name} </p>
    </c:forEach>

  <button type="submit">Confirm</button>
</form>
</body>
</html>
