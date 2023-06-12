package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(name = "addDriver", urlPatterns = "/drivers/add")
public class CreateDriverController extends GenericController {
    private static final String JSP_PATH = "addDriver.jsp";
    private final DriverService driverService =
            (DriverService) INJECTOR.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = initializeDriverByRequest(req);
        driverService.create(driver);
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    private Driver initializeDriverByRequest(HttpServletRequest req) {
        Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licence"));
        return driver;
    }
}
