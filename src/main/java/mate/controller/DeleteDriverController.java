package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

public class DeleteDriverController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverServiceImpl)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        driverService.delete(Long.valueOf(req.getParameter("driverId")));
        req.getRequestDispatcher("/WEB-INF/views/displayAllDrivers.jsp");
    }
}
