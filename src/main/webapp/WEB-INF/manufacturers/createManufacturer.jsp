<%--
  Created by IntelliJ IDEA.
  User: stim1
  Date: 13.03.2023
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
@@ -0,0 +1,16 @@
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create a new manufacturer</title>
</head>
<body>
<h1>Fill the form</h1>

<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Name <label>
    <input type="text" name="name">
</label><br>
    Country <label>
    <input type="text" name="country">
</label><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
