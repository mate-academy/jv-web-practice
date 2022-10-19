package mate.controller.driver;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver();
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
        resp.sendRedirect("request.getContextPath()" + "/drivers/all");
    }
}
