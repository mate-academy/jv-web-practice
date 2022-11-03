package mate.controller.driver;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateDriverController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Injector injector = Injector.getInstance("mate");
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");

        Driver driver  = new Driver();
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);

        Driver newDriver = driverService.create(driver);

        req.setAttribute("driver_id",newDriver.getId());
        req.setAttribute("driver_name",newDriver.getName());

        req.getRequestDispatcher("/WEB-INF/views/drivers/driver_created_successfully.jsp")
                .forward(req,resp);
    }
}
