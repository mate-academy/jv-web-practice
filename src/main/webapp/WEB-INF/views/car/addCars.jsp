<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<h2>
    Add new car:
</h2>

<form method="post" action="${pageContext.request.contextPath}/cars/create">

    Car model <label>
    <input type="text" name="model">
</label>
    <br>
    Manufacturer id <label>
    <input type="text" name="manufacturerId">
</label>
    <br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
