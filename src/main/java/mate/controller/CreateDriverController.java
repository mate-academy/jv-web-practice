package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateDriverController extends HttpServlet {
    private final static Injector INJECTOR = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) INJECTOR.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = new Driver();
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
    }
}
