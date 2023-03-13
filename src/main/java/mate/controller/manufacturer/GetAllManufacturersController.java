package mate.controller.manufacturer;

import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class GetAllManufacturersController extends HttpServlet {
    static final String REQUEST_DISPATCHER = "/WEB-INF/cars/getAllManufacturers.jsp";
    private static final Injector injector =
            Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        req.setAttribute("drivers", allManufacturers);
        req.getRequestDispatcher(REQUEST_DISPATCHER);
    }
}
