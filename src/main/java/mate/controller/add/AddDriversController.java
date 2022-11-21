package mate.controller.add;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String DRIVER_NAME = "driverName";
    private static final String DRIVER_LICENSE = "licenseNumber";
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(req.getContextPath()
                + "/WEB-INF/views/drivers/adddriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = new Driver();
        driver.setName(req.getParameter(DRIVER_NAME));
        driver.setLicenseNumber(req.getParameter(DRIVER_LICENSE));
        driverService.create(driver);
        req.getRequestDispatcher(req.getContextPath()
                + "/WEB-INF/views/message/addmessage.jsp").forward(req, resp);
    }
}
