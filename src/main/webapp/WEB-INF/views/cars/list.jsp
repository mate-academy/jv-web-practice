<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
        <%--@elvariable id="page_title" type="mate.controller.car.ShowCarsController"--%>
        ${page_title}
    </jsp:attribute>

    <jsp:attribute name="header">
        <%--@elvariable id="page_header" type="mate.controller.car.ShowCarsController"--%>
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
                <%--@elvariable id="cars" type="mate.controller.car.ShowCarsController"--%>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <th scope="row"><c:out value="${car.getId()}"/></th>
                    <td><c:out value="${car.getModel()}"/></td>
                    <td>
                        <c:out value="${car.getManufacturer().getName()}"/> from
                        <c:out value="${car.getManufacturer().getCountry()}"/>
                    </td>
                    <td>
                        <a type="button" class="btn btn-secondary"
                           href="${pageContext.request.contextPath}/cars/drivers?car_id=${car.getId()}">List of drivers</a>
                        <a type="button" class="btn btn-secondary"
                           href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">Delete</a>
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
