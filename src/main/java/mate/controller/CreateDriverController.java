package mate.controller;

import java.io.IOException;
import java.util.List;
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
    private static Injector injector = Injector.getInstance("mate");
    private static DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter("driver_name");
        String licenseNumber = req.getParameter("licenseNumber");
        List<Driver> drivers = driverService.getAll();
        Driver driver = new Driver(driverName,licenseNumber);
        for (Driver tempDriver : drivers) {
            if (tempDriver.getName().equals(driver.getName())
                    && tempDriver.getLicenseNumber()
                    .equals(driver.getLicenseNumber())) {
                throw new RuntimeException("Driver " + driver.getName()
                        + " with licenseNumber " + driver.getLicenseNumber()
                        + " is already exist");
            }
        }
        driverService.create(driver);
        resp.sendRedirect("/index");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver_create.jsp").forward(req, resp);
    }
}
