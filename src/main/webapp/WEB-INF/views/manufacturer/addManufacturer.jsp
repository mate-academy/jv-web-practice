<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add new manufacturer</title>
</head>
<body>
<h1>Add new manufacturer</h1>
<form method="post">
    <table>
        <tr>
            <td>Name :</td>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <td>Country :</td>
            <td><input type="text" name="country" required></td>
        </tr>
        <tr>
            <td><button type="submit">Add new manufacturer</button></td>
        </tr>
    </table>
</form>
</body>
</html>
