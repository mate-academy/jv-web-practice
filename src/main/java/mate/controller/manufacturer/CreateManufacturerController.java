package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/add")
public class CreateManufacturerController extends HttpServlet {
    private static final String CREATE_MANUFACTURER_VIEW_PATH =
            "/WEB-INF/views/manufacturer/createManufacturer.jsp";
    private static final String ALL_MANUFACTURERS_PATH = "/manufacturers";
    private static final String NAME_PARAMETER = "name";
    private static final String COUNTRY_PARAMETER = "country";
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(CREATE_MANUFACTURER_VIEW_PATH)
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        manufacturerService.create(new Manufacturer(req.getParameter(NAME_PARAMETER),
                req.getParameter(COUNTRY_PARAMETER)));
        resp.sendRedirect(req.getContextPath() + ALL_MANUFACTURERS_PATH);
    }
}
