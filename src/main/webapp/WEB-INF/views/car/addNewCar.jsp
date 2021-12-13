<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
  <head>
    <title>Add new car</title>
  </head>
  <body style="background-color: whitesmoke">
    <h1 style="text-decoration: none; color: dimgray">Cars page</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
      <table>
        <tr>
          <td>Model :</td>
          <td>
            <label>
              <input type="text" name="model" required>
            </label>
          </td>
        </tr>
        <tr>
          <td>Manufacturer :</td>
          <td><label>
            <select name="manufacturerId" required>
              <jsp:useBean id="manufacturers" scope="request" type="java.util.List"/>
              <c:forEach items="${manufacturers}" var="manufacturer">
                <option value="${manufacturer.id}">
                    ${manufacturer.name}
                </option>
              </c:forEach>
            </select>
          </label>
          </td>
        </tr>
        <tr>
          <td><button type="submit">Create new car</button></td>
        </tr>
      </table>
    </form>
  </body>
</html>
