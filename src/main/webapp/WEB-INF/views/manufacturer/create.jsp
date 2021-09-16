<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Manufacturer creation</title>
</head>
<body>
<h2>Please fill form below for manufacturer creation</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr>
            <td>Manufacturer name</td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td>Manufacturer country</td>
            <td>
                <input type="text" name="country">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <button type="submit">Create manufacturer</button>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <a href="${pageContext.request.contextPath}/">Return to main menu</a>
    <br>
</form>
</body>
</html>
