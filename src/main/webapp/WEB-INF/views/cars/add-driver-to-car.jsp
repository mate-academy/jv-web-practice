<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <title>Add Driver To Car</title>
    </head>
<body>
<h3>Cars:</h3>
    <table>
            <tr>
              <td>Id</td>
              <td>Model</td>
            </tr>
            <c:forEach items="${cars}" var="car">
              <tr>
                <td><c:out value="${car.id}" /></td>
                <td><c:out value="${car.model}" /></td>
              </tr>
            </c:forEach>
          </table>
          <h3>Drivers:</h3>
          <table>
                <tr>
                  <td>Id</td>
                  <td>Name</td>
                  <td>License Number</td>
                </tr>
                <c:forEach items="${drivers}" var="driver">
                  <tr>
                    <td><c:out value="${driver.id}" /></td>
                    <td><c:out value="${driver.name}" /></td>
                    <td><c:out value="${driver.licenseNumber}" /></td>
                  </tr>
                </c:forEach>
              </table>
    <h1>Enter IDs:</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/driver/add"><br>
    Driver Id: <input type="text" name="driver_id"><br><br>
    Car Id: <input type="text" name="car_id"><br><br>
    <button type="submit">Confirm</button>
    </form>
    <br>
    <h3><a href="${pageContext.request.contextPath}/">Back to menu</a></h3>
</body>
</html>