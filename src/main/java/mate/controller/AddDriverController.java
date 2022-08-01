package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/views/addDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Driver driver = new Driver();
        try {
            driver.setId(Long.valueOf(req.getParameter("driver_id")));
        } catch (RuntimeException e) {
            driver.setId(null);
        }

        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licensenumber"));

        if (driver.getId() == null) {
            driverService.create(driver);
        } else {
            driverService.update(driver);
        }
        String path = req.getContextPath() + "/drivers";
        resp.sendRedirect(path);
    }
}
