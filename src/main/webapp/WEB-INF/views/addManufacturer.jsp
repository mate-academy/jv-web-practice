<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"></jsp:include>
<h2>Please, fill the fields below to add new manufacturer</h2>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <table>
        <tr><td>Name:</td>
            <td><label><input type="text" name="name"></label></td>
        </tr>
        <tr><td>Country:</td>
            <td><label><input type="text" name="country"></label></td>
        </tr>
    </table>
    <button type="submit">Add new manufacturer</button>
</form>
</body>
</html>
