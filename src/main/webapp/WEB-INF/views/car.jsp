<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.jsp" %>
<%@include file="includes/mainmenu.jsp" %>
<h3>Car card</h3>
<form action="car" method="post">
    <table border="1">
        <tr>
            <td>ID:</td>
            <td><input name="car_id" type="hidden" value="${car.id}"  readonly >${car.id}</td>
        </tr>
        <tr>
            <td>MODEL:</td>
            <td><input name="model" value="${car.model}" type="text" ></td>
        </tr>
        <tr>
            <td>MANUFACTURER:</td>
            <td>
                <input name="manufacturer_id" readonly value="${car.manufacturer.id}" hidden >${car.manufacturer.name} ${car.manufacturer.country}
                <a href="manufacturer?car_id=${car.id}&manufacturer_id=${car.manufacturer.id}" >Select</a></td>
        </tr>
        <tr>
            <td colspan="2">
                <b>Assigned drivers list:</b>
                <table border="1">
                    <tr>
                        <td>id</td>
                        <td>name</td>
                        <td>license</td>
                    </tr>

            <c:forEach items="${car.drivers}" var="driver">
            <tr>
                <td>${driver.id}</td>
                <td>${driver.name}</td>
                <td>${driver.licenseNumber}</td>
            </tr>
            </c:forEach>
                    <c:if test = "${car.id != null}" >
                    <tr>
                        <td colspan="3">
                            <a href="adddrivertocar?car_id=${car.id}">add driver</a>
                        </td>
                    </tr>
                    </c:if>
                </table>
            </td>
        </tr>
        <tr>
            <td  colspan="2" align="right" ><input type="submit" value="Save"></td>
        </tr>
    </table>
</form>
<%@include file="includes/footer.jsp" %>
