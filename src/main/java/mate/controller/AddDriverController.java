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

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private DriverService driverService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        driverService = (DriverService) injector.getInstance(DriverService.class);
        req.getRequestDispatcher("/WEB-INF/views/drivers/addDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String driverName = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        Driver driver = new Driver(driverName, licenseNumber);
        driverService.create(driver);
        resp.sendRedirect("/drivers");
    }
}
