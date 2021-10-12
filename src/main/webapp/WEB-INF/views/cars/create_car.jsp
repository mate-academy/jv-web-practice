<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create a car</title>
</head>
<body>
    <p>
        <c:if test="${model != null}">The car: ${model}, was created!</c:if>
        <c:if test="${error == true}">
            <h3>The manufacturer is absent with ID: ${manufacturerId}!</h3><br>
            Choose one from the table below!
            <table>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>COUNTRY</th>
                </tr>
                <c:forEach var="manufacturer" items="${manufacturers}">
                    <tr>
                        <th>${manufacturer.getId()}</th>
                        <th>${manufacturer.getName()}</th>
                        <th>${manufacturer.getCountry()}</th>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </p>
    <form method="post" action="${pageContext.request.contextPath}/cars/create">
        <p>
            <label for="model">Car's name:</label>
            <input type="text" id="model" name="model">
        </p>
        <p>
            <label for="manufacturer">Car's manufacturer:</label>
            <input type="number" id="manufacturer" name="manufacturer">
        </p>
        <button type="submit">CONFIRM</button>
    </form>
    <a href="${pageContext.request.contextPath}/">
        <button>BACK TO THE FUTURE</button>
    </a>

</body>
</html>
