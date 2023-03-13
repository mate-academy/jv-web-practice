package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class CreateManufacturerController extends HttpServlet {
    static final String REQUEST_DISPATCHER = "/WEB-INF/cars/createManufacturer.jsp";
    static final String MANUFACTURER_NAME = "name";
    static final String MANUFACTURER_COUNTRY = "country";

    private static final Injector injector =
            Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(REQUEST_DISPATCHER).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter(MANUFACTURER_NAME));
        manufacturer.setCountry(req.getParameter(MANUFACTURER_COUNTRY));
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
