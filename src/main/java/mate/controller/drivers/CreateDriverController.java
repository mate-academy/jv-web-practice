package mate.controller.drivers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Service;
import mate.model.Driver;
import mate.service.DriverService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/drivers/create"})
@Service
public class CreateDriverController extends HttpServlet {
    private static final String DRV_NAME = "driver_name";
    private static final String DRV_LICENSE = "license_number";
    private static final Injector injector =
            Injector.getInstance("mate");
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/createDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter(DRV_NAME);
        String driverLicense = req.getParameter(DRV_LICENSE);

        if (driverName == null || driverName.length() < 1) {
            throw new RuntimeException("Driver name can't be empty: "
                    + driverName);
        }

        Driver driver = new Driver();
        driver.setName(driverName);
        driver.setLicenseNumber(driverLicense);

        driverService.create(driver);
        resp.sendRedirect("/drivers");
    }
}
