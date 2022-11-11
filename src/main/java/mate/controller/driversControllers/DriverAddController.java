package mate.controller.driversControllers;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;
import mate.service.GenericService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/drivers/add")
public class DriverAddController extends HttpServlet {
    static final Injector injector = Injector.getInstance("mate");
    DriverService driverService;

    public DriverAddController() {
        driverService = (DriverService)
                injector.getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(
                        "/WEB-INF/views/drivers/operations/add.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("DriverAdd POST was called");
        String name = req.getParameter("name");
        System.out.println("name=" + name);
        String licenseNumber = req.getParameter("licenseNumber");
        System.out.println("licenseNumber=" + licenseNumber);
        driverService.create(getDriver(name, licenseNumber));
    }

    private Driver getDriver(String name, String licenseNumber) {
        Driver driver = new Driver();
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        return driver;
    }
}
