<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
      ${page_title}
    </jsp:attribute>

  <jsp:attribute name="header">
      ${page_header}
    </jsp:attribute>

  <jsp:body>
    <div class="mb-3">
      <table class="table">
          <thead>
          <tr>
              <th scope="col">#</th>
              <th scope="col">Name</th>
              <th scope="col">Country</th>
              <th scope="col"></th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${manufacturers}" var="manufacture">
          <tr>
              <th scope="row"><c:out value="${manufacture.getId()}" /></th>
              <td><c:out value="${manufacture.getName()}" /></td>
              <td><c:out value="${manufacture.getCountry()}" /></td>
              <td><a type="button" class="btn btn-secondary" href="${pageContext.request.contextPath}/manufacturers/del?id=${manufacture.getId()}">Delete</a></td>
          </tr>
          </c:forEach>
          </tbody>
      </table>
    <div>

    <div class="mb-3">
        <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/manufacturers/add">Add new</a>
    <div>
  </jsp:body>
</t:genericpage>
