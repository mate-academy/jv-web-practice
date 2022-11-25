package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/drivers/createDriver.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String driverName = request.getParameter("driver_name");
        String driverLicenseNumber = request.getParameter("driver_license_number");
        Driver driver = new Driver();
        driver.setName(driverName);
        driver.setLicenseNumber(driverLicenseNumber);
        driverService.create(driver);

        request.setAttribute("message", "Driver creation was successful!");
        request.getRequestDispatcher("/WEB-INF/views/message.jsp").forward(request, response);
    }
}
