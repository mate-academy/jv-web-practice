package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/create")
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/drivers/create.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        Driver driver = new Driver();
        driver.setName(request.getParameter("name"));
        driver.setLicenseNumber(request.getParameter("licenseNumber"));
        driverService.create(driver);
        response.sendRedirect("/index");
    }
}
