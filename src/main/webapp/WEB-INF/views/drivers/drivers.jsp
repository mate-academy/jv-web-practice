    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>
    <head>
        <title>Drivers</title>
        <style>
            table, th, td {
                border: 2px solid #333;
                border-collapse: collapse;
                text-align: center;
                width: 100%;
            }

            td {
                width: 33%;
            }
            .topnav {
                background-color: #338999;
                display: flex;
                justify-content: space-between;
            }

            .topnav a {
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .topnav a.active {
                color: white;
            }
        </style>
    </head>
    <body>
    <div class="topnav">
        <a class="active" href="${pageContext.request.contextPath}/">Main</a>
        <a class="active" href="${pageContext.request.contextPath}/cars">Cars</a>
        <a class="active" href="${pageContext.request.contextPath}/drivers">Drivers</a>
        <a class="active" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
    </div>
    <h1 style="text-align: center">Drivers List</h1>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE NUMBER</td>
            <td>DELETE DRIVER</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}"/></td>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?driverId=${driver.id}">DELETE DRIVER</a></td>
        </tr>
        </c:forEach>
    </table>
    <h2>Add Driver</h2>
    <form method="post" name="addDriverForm" action="${pageContext.request.contextPath}/drivers/add">
        Name <input type="text" name="driverName">
        LicenseNumber <input type="tel" name="licenseNumber">
        <button type="submit">Add Driver</button>
    </form>
    <h2>Update Driver</h2>
    <form method="post" name="updateDriverForm" action="${pageContext.request.contextPath}/drivers/update">
        <select name="driverId">
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}"><c:out value="${driver.id}"/>.<c:out value="${driver.name}"/></option>
            </c:forEach>
        </select>
        Name <input type="text" name="driverName">
        LicenseNumber <input type="text" name="licenseNumber">
        <button type="submit">Update Driver</button>
    </form>
    </body>
    </html>
