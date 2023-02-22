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

@WebServlet(urlPatterns = {"/drivers/create"})
@Service
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);
    private static final String DRIVER_NAME = "driver_name";
    private static final String DRIVER_LICENCE_NUMBER = "driver_licence_number";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/createDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter(DRIVER_NAME);
        String driverLicense = req.getParameter(DRIVER_LICENCE_NUMBER);

        if (driverName == null || driverName.length() < 1) {
            throw new RuntimeException("Field name can not be empty. driverName = "
                    + driverName);
        }

        Driver driver = new Driver();
        driver.setName(driverName);
        driver.setLicenseNumber(driverLicense);
        driverService.create(driver);
        resp.sendRedirect("/drivers");
    }
}
