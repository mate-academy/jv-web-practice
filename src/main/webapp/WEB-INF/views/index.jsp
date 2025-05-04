<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
    <title> Taxi service </title>
</head>
<body>
<h1> Taxi service </h1>
<table>
    <tr>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/getAllCars">
                <button type="submit">
                     All cars
                </button>
            </form>
        </td>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/cars/create">
                <button type="submit">
                    Add new car
                </button>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/getAllDrivers">
                <button type="submit">
                    All drivers
                </button>
            </form>
        </td>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/createDriver">
                <button type="submit">
                    Add new driver
                </button>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/getAllManufacturers">
                <button type="submit">
                    All manufacturers
                </button>
            </form>
        </td>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/manufacturers/create">
                <button type="submit">
                    Add new manufacturer
                </button>
            </form>
        </td>
    </tr>
    <td>
        <form method="get"
              action="${pageContext.request.contextPath}/drivers/add">
            <button type="submit">
                Add driver to car
            </button>
        </form>
    </td>
</table>
</body>
</html>
