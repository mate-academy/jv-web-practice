package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/register")
public class DriverRegistrationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private DriverService driverService;

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/register.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = new Driver(req.getParameter("name"), req.getParameter("license_number"));
        driverService.create(driver);
        req.getRequestDispatcher("/WEB-INF/views/driver/registered.jsp").forward(req,resp);
    }

    @Override
    public void init() throws ServletException {
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }
}
