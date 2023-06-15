package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(name = "displayAllDrivers", urlPatterns = "/drivers")
public class GetAllDriversController extends GenericController {
    private static final String JSP_PATH = "displayAllDrivers.jsp";
    private final DriverService driverService =
            (DriverService) INJECTOR.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> allDrivers = driverService.getAll();
        req.setAttribute("drivers", allDrivers);
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }
}
