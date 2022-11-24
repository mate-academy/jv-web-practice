package mate.controller;

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
public class DisplayAllDriversController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) INJECTOR.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("drivers", driverService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/driver-list.jsp").forward(req, resp);
    }
}
