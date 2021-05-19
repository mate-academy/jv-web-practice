package mate.controller.driver;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers")
public class GetAllDriversController extends HttpServlet {
    private static final String ALL_DRIVERS_VIEW_PATH =
            "WEB-INF/views/driver/allDrivers.jsp";
    private static final String DRIVERS_ATTRIBUTE_NAME = "drivers";
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        req.setAttribute(DRIVERS_ATTRIBUTE_NAME, drivers);
        req.getRequestDispatcher(ALL_DRIVERS_VIEW_PATH).forward(req, resp);
    }
}
