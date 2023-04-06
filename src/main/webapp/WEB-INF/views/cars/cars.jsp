<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
  <body>
    <jsp:include page="../header.jsp"/>
    <div class="content">
      <table class="__table">
        <thead>
        <tr>
          <th>id</th>
          <th>model</th>
          <th>manufacturer name</th>
          <th>manufacturer country</th>
        </tr>
        </thead>
        <tbody>
        <jsp:useBean id="cars" scope="request" type="java.util.List"/>
        <c:forEach var="driver" items="${cars}">
          <tr>
            <td>${driver.getId()}</td>
            <td>${driver.getModel()}</td>
            <td>${driver.getManufacturer().getName()}</td>
            <td>${driver.getManufacturer().getCountry()}</td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <br/>
      <table class="__table">

      </table>
      <br/>
      <a href="cars/add">add car</a>
      <a href="cars/drivers/add">add driver to car</a>
    </div>
  </body>
</html>
