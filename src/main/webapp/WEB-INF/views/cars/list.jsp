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
                <th scope="col">Model</th>
                <th scope="col">Manufacturer</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${cars}" var="car">
                <c:set var="manufacturer" scope="page" value="${car.getManufacturer()}"/>
                <tr>
                    <th scope="row"><c:out value="${car.getId()}"/></th>
                    <td><c:out value="${car.getModel()}"/></td>
                    <td>
                        <c:out value="${manufacturer.getName()}"/> from
                        <c:out value="${manufacturer.getCountry()}"/>
                    </td>
                    <td><a type="button" class="btn btn-secondary"
                           href="${pageContext.request.contextPath}/cars/del?id=${car.getId()}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>

        <div class="mb-3">
        <a type="button" class="btn btn-primary"
           href="${pageContext.request.contextPath}/cars/add">Add new</a>
        <div>
    </jsp:body>
</t:genericpage>
