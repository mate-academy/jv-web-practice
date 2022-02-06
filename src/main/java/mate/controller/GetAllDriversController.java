package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetAllDriversController extends HttpServlet {
    private static final String DRIVERS_PAGE = "/WEB-INF/views/drivers.jsp";
    private static final String DRIVERS_ATTRIBUTE = "drivers";
    private static final String ROOT_PACKAGE = "mate";
    private DriverService driverService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        driverService = (DriverService) injector
                .getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        req.setAttribute(DRIVERS_ATTRIBUTE, drivers);
        req.getRequestDispatcher(DRIVERS_PAGE).forward(req, resp);
    }
}
