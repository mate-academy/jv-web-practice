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
    private static final Injector injector =
            Injector.getInstance("mate");
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/createDriver.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = new Driver();
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
    }
}
