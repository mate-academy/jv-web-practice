package mate.controller;

import mate.lib.Inject;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/drivers/create")
public class CreateDriverController extends HttpServlet {
    private final Injector injector = Injector.getInstance("mate");
    private DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/createDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("model");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver(name, licenseNumber);
        driverService.create(driver);
        req.getRequestDispatcher("/WEB-INF/views/notifications/success.jsp").forward(req, resp);
    }
}
