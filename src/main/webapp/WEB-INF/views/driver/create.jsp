<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver creation</title>
</head>
<body>
<h2>Please fill form below for driver creation</h2>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr>
            <td>Driver name</td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td>Licence number</td>
            <td>
                <input type="text" name="licence_number">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <button type="submit">Create driver</button>
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
