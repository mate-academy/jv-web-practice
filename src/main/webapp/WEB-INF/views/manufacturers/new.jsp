<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New manufacturer</title>
</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<H1>Add new manufacturer</H1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/new">
    <table>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><input type="text" name="country"></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button type="submit">Add</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
