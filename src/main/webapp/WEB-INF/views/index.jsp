<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Lets go</title>
    </head>
    <body>
        <h1>Choose page</h1>
        <table>
            <tr>
                <td><a href="${pageContext.request.contextPath}/cars">Cars</a></td>
                <td><a href="${pageContext.request.contextPath}/drivers">Drivers</a></td>
                <td><a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a></td>
            </tr>
        </table>
    </body>
</html>
