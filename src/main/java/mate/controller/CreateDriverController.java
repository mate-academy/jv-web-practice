package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.exception.DataProcessingException;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class CreateDriverController extends HttpServlet {
    private static final String INJECTOR_INSTANCE = "mate";
    private static final Injector injector = Injector.getInstance(INJECTOR_INSTANCE);
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/newdrv.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getParameter("name").isEmpty()
                || req.getParameter("licenseNumber").isEmpty()) {
            throw new DataProcessingException("Input parameters couldn't be empty!",
                    new Throwable());
        }
        Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driverService.create(driver);
    }
}
