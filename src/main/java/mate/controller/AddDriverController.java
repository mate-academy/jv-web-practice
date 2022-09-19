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

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/addDriver.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Driver driver = new Driver();
        String name = request.getParameter("name");
        String licenseNumber = request.getParameter("license_number");
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
        response.sendRedirect(request.getContextPath() + "/drivers");
    }
}
