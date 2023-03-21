package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

public class DisplayDriversController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private final DriverService driverService;

    public DisplayDriversController() {
        driverService = (DriverService) INJECTOR.getInstance(DriverService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/view/display_drivers.jsp").forward(req, resp);

        Long id = Long.valueOf(req.getParameter("id"));
        driverService.delete(id);
    }
}
