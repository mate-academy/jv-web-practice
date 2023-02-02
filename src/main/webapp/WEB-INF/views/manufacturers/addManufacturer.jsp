<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr>
            <td>Manufacturer</td>
            <td><input type="text" name="name"><br></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="country"></td>
        </tr>
    </table>
    <button type="submit">Add manufacturer</button>
</form>
<form method="get"
      action ="${pageContext.request.contextPath}/home">
    <button type="submit">
        Back
    </button>
</form>
</body>
</html>
