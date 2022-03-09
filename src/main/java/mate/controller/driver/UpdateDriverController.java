package mate.controller.driver;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/update")
public class UpdateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Driver driver = new Driver();
        driver.setId(Long.parseLong(req.getParameter("id")));
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driverService.update(driver);
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
