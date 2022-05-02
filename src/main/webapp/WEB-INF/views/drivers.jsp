<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body class="w3-light-grey">
<div class="w3-container w3-center w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>Create Driver</h2>
    </div>
    <form method="post" action="/drivers/create">
        Name: <input type="text" name="name"/> <br/>
        License Number: <input type="text" name="license_number"/> <br/>
        <input type="submit" value="Create"/>
    </form>
</div>
<div class="w3-container w3-center w3-card-4">
    <div class="w3-container w3-center w3-green">
        <h2>All drivers</h2>
    </div>

    <table class="w3-table-all w3-small">
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE NUMBER</td>
            <td></td>
        </tr>
        <c:forEach items="${drivers_list}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td>
                    <button type="submit" class="w3-btn w3-green w3-round-large w3-margin-bottom"
                            onclick="location.href='/drivers/delete?id=${driver.id}'">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div class="w3-container w3-center w3-card-4 w3-pudding">
    <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-round-large" onclick="location.href='/manufacturers'">Show all manufacturers</button>
    </div>
    <div class="w3-container w3-grey w3-opacity w3-right-align w3-padding">
        <button class="w3-btn w3-round-large" onclick="location.href='/cars'">Show all cars</button>
    </div>
</div>
</body>
</html>
