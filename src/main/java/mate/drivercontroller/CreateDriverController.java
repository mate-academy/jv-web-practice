package mate.drivercontroller;

import java.io.IOException;
import java.util.NoSuchElementException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class CreateDriverController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driversJsp/create_driver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            String driverLicence = req.getParameter("license_number");
            Driver driver = new Driver();
            driver.setName(name);
            driver.setLicenseNumber(driverLicence);
            driverService.create(driver);

            resp.sendRedirect(req.getContextPath() + "/success");
        } catch (NoSuchElementException e) {
            resp.sendRedirect(req.getContextPath() + "/error");
        }
    }
}
