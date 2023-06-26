<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add Driver</title>
  </head>
  <body>
    <h1>Add driver:</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
      Driver name: <input type="text" name="name"><br>
      License number: <input type="text" name="number"><br>
      <button type="submit">Add</button>
    </form>
  </body>
</html>
