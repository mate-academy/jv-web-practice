<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
  <head>
    <title>Drivers</title>
  </head>
  <body style="background-color: whitesmoke">
    <h1 style="text-decoration: none; color: dimgray">Drivers page</h1>
      <button style="color: aliceblue; font-size: 20px; background-color: dimgray; border: none">
        <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/">
          To main page
        </a>
      </button>
    <table>
      <tr>
        <td>Driver name</td>
        <td>License number</td>
      </tr>
      <jsp:useBean id="drivers" scope="request" type="java.util.List"/>
      <c:forEach items="${drivers}" var="driver">
        <tr>
          <td><c:out value="${driver.name}"/></td>
          <td><c:out value="${driver.licenseNumber}"/></td>
          <td>
            <button style="color: aliceblue; font-size: 20px; background-color: dimgray; border: none" type="submit">
              <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                Delete driver
              </a>
            </button>
          </td>
        </tr>
      </c:forEach>
      <tr>
        <td>
          <button style="color: aliceblue; font-size: 20px; background-color: dimgray; border: none">
            <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/drivers/add">
              Add new driver
            </a>
          </button>
        </td>
      </tr>
    </table>
  </body>
</html>
