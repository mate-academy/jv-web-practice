<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration of driver</title>
</head>
<body>
<h1>New driver</h1>
<table>
    <form method="post" action="${pageContext.request.contextPath}/drivers/add">
        Name <input required type="text" name="driver_name">,<br>
        Licence number <input required type="text" name="licence_number">,<br>
        <button type="submit">Confirm</button>
    </form>
</table>
</body>
</html>
