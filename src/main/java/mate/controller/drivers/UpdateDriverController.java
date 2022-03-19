package mate.controller.drivers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/update")
public class UpdateDriverController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private static final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = Long.parseLong(req.getParameter("driverId"));
        String name = req.getParameter("driverName");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = driverService.get(driverId);
        if (!name.isEmpty()) {
            driver.setName(name);
        }
        if (!licenseNumber.isEmpty()) {
            driver.setLicenseNumber(licenseNumber);
        }
        driverService.update(driver);
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
