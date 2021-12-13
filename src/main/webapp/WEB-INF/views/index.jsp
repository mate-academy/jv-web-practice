<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>taxi</title>
    </head>
    <body>
        <h1 style="text-decoration: none; font-size: 55px; color: dimgray">Welcome to taxi service!</h1>
        <header style="text-decoration: none; font-size: 40px; color: lightslategray"><b>Please choose your decision</b></header><br>
        <td>
            <button style="color: aliceblue;font-size: 30px; background-color: dimgray;border: none" type="submit">
                <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/cars">
                    Get all cars
                </a>
            </button>
            <br>
            <br>
            <button style="color: aliceblue;font-size: 30px; background-color: dimgray;border: none" type="submit">
                <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/drivers">
                    Get all drivers
                </a>
            </button>
            <br>
            <br>
            <button style="color: aliceblue;font-size: 30px; background-color: dimgray;border: none" type="submit">
                <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/manufacturers">
                    Get all manufacturers
                </a>
            </button>
            <br>
            <br>
            <button style="color: aliceblue;font-size: 30px; background-color: dimgray;border: none" type="submit">
                <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/inject">
                    InjectData
                </a>
            </button>
        </td>
    </body>
</html>
