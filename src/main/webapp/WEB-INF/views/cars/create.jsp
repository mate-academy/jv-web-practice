<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car registration form</title>
</head>
<body>
<h1>Please, fill the fields below</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Model<input type = "text" name = "model"><br>
    <h4> Please, choose the manufacturer Id from the list below</h4>
    <table border="1">
        <tr>
            <tb> id </tb>
            <tb> Name </tb>
            <tb> Country </tb>
        </tr>
        <c:forEach items = "${manufacturers}" var = "manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/></td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
            </tr>
        </c:forEach>
        <tr>
        </tr>
    </table>
    ManufacturersId<input type="number" name="manufacturerId"><br>
    <button type="submit">Submit</button>
    <h2>You can add a new manufacturers here</h2>
    Name<input type="text" name="name"><br>
    Country<input type="text" name="country"><br>
    <button type="submit">Submit</button>
</form>
</body>
</html>
