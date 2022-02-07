package mate.controller;

import mate.lib.Injector;
import mate.service.DriverService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteDriverController extends HttpServlet {
    private static final String ROOT_PACKAGE = "mate";
    private static final String DRIVERS_REQUEST = "/drivers";
    private static final String DRIVER_ID_ATTRIBUTE = "driver_id";
    private DriverService driverService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        driverService = (DriverService) injector
                .getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        long driverId = Long.parseLong(req.getParameter(DRIVER_ID_ATTRIBUTE));
        driverService.delete(driverId);
        resp.sendRedirect(getServletContext().getContextPath()
                + DRIVERS_REQUEST);
    }
}
