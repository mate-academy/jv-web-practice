package mate.controller.driver;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Driver;
import mate.lib.Injector;
import mate.service.DriverService;

public class GetAllDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> driverAll = driverService.getAll();
        req.setAttribute("drivers", driverAll);
        req.getRequestDispatcher("/WEB-INF/views/drivers/all.jsp").forward(req,resp);
    }
}
