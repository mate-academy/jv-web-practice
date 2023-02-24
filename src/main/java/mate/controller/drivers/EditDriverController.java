package mate.controller.drivers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = {"/drivers/edit"})
@Service
public class EditDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);
    private static final String DRIVER_NAME = "driver_name";
    private static final String DRIVER_LICENCE_NUMBER = "driver_licence_number";
    private static final String DRIVER_ID = "driver_id";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverId = req.getParameter("driverId");
        if (driverId == null || driverId.length() < 1) {
            throw new RuntimeException("Can not edit driver with empty driverId");
        }
        Driver driver = driverService.get(Long.valueOf(driverId));

        req.setAttribute("driver", driver);
        req.getRequestDispatcher("/WEB-INF/views/drivers/editDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter(DRIVER_NAME);
        String driverId = req.getParameter(DRIVER_ID);

        if (driverName == null || driverName.length() < 1) {
            throw new RuntimeException("Field name can not be empty. driverName = " + driverName);
        }

        if (driverId == null) {
            throw new RuntimeException("Field driverId can not be empty. ");
        }

        String driverLicense = req.getParameter(DRIVER_LICENCE_NUMBER);

        Driver driver = new Driver();
        driver.setId(Long.valueOf(driverId));
        driver.setName(driverName);
        driver.setLicenseNumber(driverLicense);
        driverService.update(driver);
        resp.sendRedirect("/drivers");
    }
}
