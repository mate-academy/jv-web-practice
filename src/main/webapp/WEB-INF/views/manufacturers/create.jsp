<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adding a new Manufacturer</title>
</head>
<body style="display:flex; flex-direction:column; justify-content:center; text-align: center">
    <h10><a style="text-decoration: none" href="${pageContext.request.contextPath}/menu">&#8592;Back to menu</a></h10>
    <h1>Adding a new Manufacturer:</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add" style="display:flex; justify-content:center">
    <table border="4">
        <tr>
            <td>Manufacturer Name:</td>
            <td><input type="text" name="manufacturerName"><br></td>
        </tr>
        <tr>
            <td>Manufacturer Country: </td>
            <td><input type="text" name="manufacturerCountry"><br></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><button type="submit">Create</button></td>
        </tr>
    </table>
</form>
</body>
</html>
