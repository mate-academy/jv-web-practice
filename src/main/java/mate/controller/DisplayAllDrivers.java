package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers")
public class DisplayAllDrivers extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        DriverService driverService
                = (DriverService) injector.getInstance(DriverService.class);
        req.setAttribute("drivers", driverService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/all-drivers.jsp").forward(req, resp);
    }
}
