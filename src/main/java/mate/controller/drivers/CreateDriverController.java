package mate.controller.drivers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/create")
public class CreateDriverController extends HttpServlet {
    private static final Injector INJECTOR =
            Injector.getInstance("mate");
    private final DriverService driverService = (DriverService)
            INJECTOR.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/createDriver.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/drivers/get");
    }
}
