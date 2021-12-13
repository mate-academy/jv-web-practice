package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/displayAllDrivers")
public class DisplayAllDrivers extends HttpServlet {
    private final static Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Driver> driverList = driverService.getAll();
      req.setAttribute("driverList", driverList);
      req.getRequestDispatcher("/WEB-INF/views/...).forward(req, resp);
    }
}
