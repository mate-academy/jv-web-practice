package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.DriverService;

public class DeleteDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    public static final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        driverService.delete(id);
        req.setAttribute("driver_id", id);
        req.getRequestDispatcher("/WEB-INF/views/drivers/deleted_successfully.jsp")
                .forward(req, resp);
    }
}
