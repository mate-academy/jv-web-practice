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

@WebServlet(urlPatterns = "/drivers/add")
public class CreateDriverController extends HttpServlet {
    private static final String ALL_DRIVERS_PATH = "/drivers";
    private static final String CREATE_DRIVER_VIEW_PATH
            = "/WEB-INF/views/driver/createDriver.jsp";
    private static final String DRIVER_NAME_PARAMETER_NAME = "name";
    private static final String LICENSE_NUMBER_PARAMETER_NAME = "license_number";
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(CREATE_DRIVER_VIEW_PATH)
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        driverService.create(new Driver(req.getParameter(DRIVER_NAME_PARAMETER_NAME),
                req.getParameter(LICENSE_NUMBER_PARAMETER_NAME)));
        resp.sendRedirect(ALL_DRIVERS_PATH);
    }
}
