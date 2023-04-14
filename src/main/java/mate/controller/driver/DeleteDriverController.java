package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.DriverService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/drivers/delete"})
public class DeleteDriverController extends HttpServlet {
    private static final String DRV_ID = "driver_id";
    private final Injector injector =
            Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverId = req.getParameter(DRV_ID);

        if (driverId == null || driverId.length() < 1) {
            throw new RuntimeException("Can't delete driver "
                    + "with empty id: " + driverId);
        }

        driverService.delete(Long.valueOf(driverId));
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
