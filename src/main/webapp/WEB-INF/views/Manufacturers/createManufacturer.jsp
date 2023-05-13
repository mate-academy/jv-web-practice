<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pizna
  Date: 15.03.2023
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<h1>Впишіть поля нового виробника</h1>

<form method ="post" action="${pageContext.request.contextPath}/Manufacturers/createManufacturer">
  Name <input type=text" name= "name"><br>
  Country <input type=text" name= "country"><br>
  <button type="submit">Confirm</button>
</form>
</body>
</html>
