<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Taxi service application</title>
</head>
<body>
<h1>Taxi service</h1>
<table>
    <tr>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/cars/create">
                <button type="submit">
                    Create new car
                </button>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/drivers/all">
                <button type="submit">
                    All drivers
                </button>
            </form>
        </td>
        <td>
            <form method="get"
                  action="${pageContext.request.contextPath}/drivers/create">
                <button type="submit">
                    Add new driver
                </button>
            </form>
        </td>
    </tr>
    <tr>
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
