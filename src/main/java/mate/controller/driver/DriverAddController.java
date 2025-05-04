package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet("/drivers/add")
public class DriverAddController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService;

    public DriverAddController() {
        driverService = (DriverService)
                injector.getInstance(DriverService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(
                        "/WEB-INF/views/drivers/operations/add.jsp")
                .forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        driverService.create(getDriver(name, licenseNumber));
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }

    private Driver getDriver(String name, String licenseNumber) {
        Driver driver = new Driver();
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        return driver;
    }
}
