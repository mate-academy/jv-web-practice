package mate.controller.manufacture;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

public class GetAllManufacturerController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final ManufacturerService driverService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("manufacturer", driverService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/all.jsp").forward(req,resp);
    }
}
