<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home page</title>
</head>
<body>
<table>
    <tr>
        <td>
            <form method="get"
                  action ="${pageContext.request.contextPath}/cars">
                <button type="submit">
                    All cars
                </button>
            </form>
        </td>
        <td>
            <form method="get"
                  action ="${pageContext.request.contextPath}/cars/add">
                <button type="submit">
                    Add new car
                </button>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <form method="get"
                  action ="${pageContext.request.contextPath}/drivers">
                <button type="submit">
                    All drivers
                </button>
            </form>
        </td>
        <td>
            <form method="get"
                  action ="${pageContext.request.contextPath}/drivers/add">
                <button type="submit">
                    Add new driver
                </button>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <form method="get"
                  action ="${pageContext.request.contextPath}/manufacturers">
                <button type="submit">
                    All manufacturers
                </button>
            </form>
        </td>
        <td>
            <form method="get"
                  action ="${pageContext.request.contextPath}/manufacturers/add">
                <button type="submit">
                    Add new manufacturer
                </button>
            </form>
        </td>
    </tr>
</table>
</body>
</html>
