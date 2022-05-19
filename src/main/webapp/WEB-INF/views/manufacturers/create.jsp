<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a new manufacturer</title>
</head>
<body>
<h1>Fill in manufacturer details</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/create">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><input type="text" name="country"></td>
        </tr>
        <tr>
            <td><button type="submit">Create a new manufacturer</button></td>
            <td></td>
        </tr>
    </table>

</form>
</body>
</html>
