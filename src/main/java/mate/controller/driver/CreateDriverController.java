package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/driver/driverCreator.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String driverName = request.getParameter("name");
        String licenseNumber = request.getParameter("licenseNumber");
        Driver driver = new Driver(driverName, licenseNumber);
        for (Driver driverInDb : driverService.getAll()) {
            if (driverInDb.getLicenseNumber().equals(driver.getLicenseNumber())) {
                return;
            }
        }
            driverService.create(new Driver(driverName, licenseNumber));
        response.sendRedirect("/index");
    }
}
