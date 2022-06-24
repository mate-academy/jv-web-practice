<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericpage>
    <jsp:attribute name="title">
        <%--@elvariable id="page_title" type="mate.controller.car.driver.ShowDriversForCarController"--%>
        ${page_title}
    </jsp:attribute>

    <jsp:attribute name="header">
        <%--@elvariable id="page_header" type="mate.controller.car.driver.ShowDriversForCarController"--%>
        ${page_header}
    </jsp:attribute>

    <jsp:body>
        <%--@elvariable id="car" type="mate.controller.car.driver.ShowDriversForCarController."--%>
        <div class="mb-3">
            <table class="table table-borderless">
                <tbody>
                <tr>
                    <td class="col-2">Id</td>
                    <td><c:out value="${car.getId()}"/></td>
                </tr>
                <tr>
                    <td>Model</td>
                    <td><c:out value="${car.getModel()}"/></td>
                </tr>
                <tr>
                    <td>Manufacturer name</td>
                    <td><c:out value="${car.getManufacturer().getName()}"/></td>
                </tr>
                <tr>
                    <td>Manufacturer country</td>
                    <td><c:out value="${car.getManufacturer().getCountry()}"/></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="mb-3">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">License number</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${car.getDrivers()}" var="driver">
                <tr>
                    <th scope="row"><c:out value="${driver.getId()}"/></th>
                    <td><c:out value="${driver.getName()}"/></td>
                    <td><c:out value="${driver.getLicenseNumber()}"/></td>
                    <td>
                        <a type="button" class="btn btn-secondary"
                           href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.getId()}&driver_id=${driver.getId()}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div>

        <div class="mb-3">
            <a type="button" class="btn btn-primary" href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.getId()}">Add new</a>
            <a type="button" class="btn btn-danger" href="${pageContext.request.contextPath}/cars">Cancel</a>
        <div>
    </jsp:body>
</t:genericpage>
