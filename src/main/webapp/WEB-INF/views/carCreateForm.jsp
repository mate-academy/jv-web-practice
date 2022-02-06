<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new car</title>
    <script type = "text/javascript">
        function fun() {
            alert ("Done");
        }
    </script>
</head>
<body>
<h1>Create new car from follow data</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Model: <input type="text" name="model"><br>
    <label>Select manufacturer</label> <br>
    <table>
        <tr>
            <td>SELECT</td>
            <td>ID</td>
            <td>NAME</td>
            <td>COUNTRY</td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
        <tr>
            <td><input type="radio" name="manufacturer_id" value="${manufacturer.getId()}"></td>
            <td><c:out value="${manufacturer.getId()}" /></td>
            <td><c:out value="${manufacturer.getName()}" /></td>
            <td><c:out value="${manufacturer.getCountry()}" /></td>
        </tr>
        </c:forEach>
    </table>
    <br><br>
    <button type="submit" onclick="fun()">Create</button>
</form>
</body>
</html>
