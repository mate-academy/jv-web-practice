<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create manufacturer</title>
</head>
<body>
    <h1><a href="${pageContext.request.contextPath}/">Taxi service</a></h1>
    <h2>Create manufacturer</h2>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="manufacturer_name" required="required"></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><input type="text" name="country" required="required"></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit">Confirm data</button></td>
            </tr>
        </table>
    </form>
</body>
</html>
