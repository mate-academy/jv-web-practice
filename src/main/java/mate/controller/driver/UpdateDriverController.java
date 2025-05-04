package mate.controller.driver;

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

@WebServlet(urlPatterns = {"/drivers/update"})
@Service
public class UpdateDriverController extends HttpServlet {
    private static final String DRV_ID = "driver_id";
    private static final String DRV_NAME = "driver_name";
    private static final String DRV_LICENSE = "license_number";
    private static final Injector injector =
            Injector.getInstance("mate");
    private static final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverId = req.getParameter(DRV_ID);

        if (driverId == null || driverId.length() < 1) {
            throw new RuntimeException("Can't get empty driver Id: "
                    + driverId);
        }

        Driver driver = driverService.get(Long.valueOf(driverId));

        req.setAttribute("driver", driver);
        req.getRequestDispatcher("/WEB-INF/views/driver/updateDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverId = req.getParameter(DRV_ID);
        String driverName = req.getParameter(DRV_NAME);

        if (driverName == null || driverName.length() < 1) {
            throw new RuntimeException("Can't update empty driver name: "
                    + driverName);
        }
        if (driverId == null) {
            throw new RuntimeException("Can't get empty driver Id");
        }

        String driverLicense = req.getParameter(DRV_LICENSE);

        Driver driver = new Driver();
        driver.setId(Long.valueOf(driverId));
        driver.setName(driverName);
        driver.setLicenseNumber(driverLicense);

        driverService.update(driver);
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
