<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration of manufacturer</title>
</head>
<body>
<h1>New manufacturer</h1>
<table>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        Name <input required type="text" name="manufacturer_name">,<br>
        Country <input required type="text" name="country">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
