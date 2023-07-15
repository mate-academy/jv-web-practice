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

@WebServlet(urlPatterns = "/drivers/update")
public class UpdateDriverController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/updateDriver.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverId = req.getParameter("driver_id");
        String driverName = req.getParameter("driver_name");
        String licenseNumber = req.getParameter("license_number");
        Driver driver = new Driver();
        driver.setId(Long.valueOf(driverId));
        driver.setName(driverName);
        driver.setLicenseNumber(licenseNumber);
        driverService.update(driver);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
