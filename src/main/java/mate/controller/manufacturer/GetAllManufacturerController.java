package mate.controller.manufacturer;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers")
public class GetAllManufacturerController extends HttpServlet {
    private static final String ALL_MANUFACTURER_VIEW_PATH =
            "WEB-INF/views/manufacturer/allManufacturers.jsp";
    private static final String MANUFACTURERS_ATTRIBUTE_NAME = "manufacturers";
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute(MANUFACTURERS_ATTRIBUTE_NAME, manufacturers);
        req.getRequestDispatcher(ALL_MANUFACTURER_VIEW_PATH)
                .forward(req, resp);
    }
}
