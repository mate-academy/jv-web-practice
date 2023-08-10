package mate.controller.drivers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/get")
public class GetAllDriversController extends HttpServlet {
    private static final Injector INJECTOR =
            Injector.getInstance("mate");
    private static final DriverService DRIVER_SERVICE = (DriverService)
            INJECTOR.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("drivers", DRIVER_SERVICE.getAll());
        req.getRequestDispatcher("/WEB-INF/views/drivers/getAllDrivers.jsp")
                .forward(req, resp);
    }
}
