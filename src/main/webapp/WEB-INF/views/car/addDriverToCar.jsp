<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Add driver to car</title>
    </head>
    <body style="background-color: whitesmoke">
        <h1 style="text-decoration: none; color: dimgray">Add driver to car</h1>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            <table>
                <tr>
                    <td>Select car :</td>
                    <td><label><select name="carId">
                            <c:forEach items="${cars}" var="car">
                                <option value="${car.id}">
                                        ${car.model}
                                </option>
                            </c:forEach>
                        </select></label></td>
                </tr>
                <tr>
                    <td>Select driver :</td>
                    <td><label>
                        <select name="driverId">
                            <c:forEach items="${drivers}" var="driver">
                                <option value="${driver.id}">
                                        ${driver.name}
                                </option>
                            </c:forEach>
                        </select>
                    </label>
                    </td>
                </tr>
                <tr>
                    <td><button type="submit">Add driver to car</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
