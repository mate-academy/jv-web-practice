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

@WebServlet(urlPatterns = "/drivers/new")
public class CreateDriverController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");

    private final DriverService driverService =
            (DriverService) INJECTOR.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/new.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter("name");
        String driverLicenseNumber = req.getParameter("license_number");
        Driver newDriver = new Driver();
        newDriver.setName(driverName);
        newDriver.setLicenseNumber(driverLicenseNumber);
        driverService.create(newDriver);
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
