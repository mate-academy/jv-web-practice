<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Cars</title>
    </head>
    <body style="background-color: whitesmoke">
        <h1 style="text-decoration: none; color: dimgray">List of cars</h1>
            <button style="color: aliceblue;font-size: 20px; background-color: dimgray; border: none">
                <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/">
                    To main page
                </a>
            </button>
        <table style="width: 50vw">
            <tr>
                <td style="color: whitesmoke; font-size: 18px; text-align: center; background-color: dimgray"> Car model </td>
                <td style="color: whitesmoke; font-size: 18px; text-align: center; background-color: dimgray"> Car manufacturer </td>
                <td style="color: whitesmoke; font-size: 18px; text-align: center; background-color: dimgray"> Car drivers </td>
            </tr>
            <jsp:useBean id="cars" scope="request" type="java.util.List"/>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td style="color: dimgray; font-size: 15px; text-align: center;"><c:out value="${car.model}"/></td>
                    <td style="color: dimgray; font-size: 15px; text-align: center;"><c:out value="${car.manufacturer.name}"/></td>
                    <td style="color: dimgray; font-size: 15px; text-align: center;">
                        <c:forEach items="${car.drivers}" var="driver">
                            <c:out value="Name: [ ${driver.name} ] "/>
                            <c:out value="License number: [  ${driver.licenseNumber} ]"/><br>
                        </c:forEach>
                    <td>
                        <button style="color: whitesmoke; font-size: 15px; background-color: dimgray;border: none" type="submit">
                            <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete car</a>
                        </button>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td>
                    <button  style="color: aliceblue;font-size: 20px; background-color: dimgray;border: none" type="submit" >
                        <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a>
                    </button>
                    <button  style="color: aliceblue; font-size: 20px; background-color: dimgray; border: none">
                        <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/cars/add">
                            Add new car
                        </a>
                    </button></td>
            </tr>
        </table>
    </body>
</html>
