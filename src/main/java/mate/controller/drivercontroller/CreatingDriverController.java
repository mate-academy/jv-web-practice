package mate.controller.drivercontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class CreatingDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter("drivername");
        String licenseNumber = req.getParameter("licensenumber");
        createNewDriver(driverName, licenseNumber);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }

    private Driver createNewDriver(String driverName, String licenseNumber) {
        Driver driver = new Driver();
        driver.setName(driverName);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
        return driver;
    }
}
