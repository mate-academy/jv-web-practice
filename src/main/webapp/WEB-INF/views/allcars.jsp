<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %><table>
  <h3>List of Cars </h3>
  <a href="/cars/car">Create Car</a>
  <tr>
    <td>id</td>
    <td>name</td>
    <td>manufacturer</td>
    <td>country</td>
    <td  colspan="2">assigned drivers</td>
  </tr>
  <c:forEach items="${cars}" var="car">
    <tr>
      <td><c:out value="${car.id}"/></td>
      <td><c:out value="${car.model}"/></td>
      <td><c:out value="${car.manufacturer.name}"/></td>
      <td><c:out value="${car.manufacturer.country}"/></td>
      <td>
        <table bgcolor="#f0f0f0" width=100%>
          <tr>
            <td>id</td>
            <td>driver name</td>
            <td>license number</td>
          </tr>
            <c:forEach items="${car.drivers}" var="driver">
              <tr>
              <td>${driver.id}</td>
              <td>${driver.name}</td>
              <td>${driver.licenseNumber}</td>
              </tr>
            </c:forEach>
         </table>
      </td>
      <td><a href="cars/car?car_id=${car.id}&manufacturer_id=${car.manufacturer.id}">edit</a></td>
    </tr>
  </c:forEach>
</table>
<%@include file="includes/footer.jsp" %>