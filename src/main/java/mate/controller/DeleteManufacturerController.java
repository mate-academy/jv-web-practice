package mate.controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

public class DeleteManufacturerController extends HttpServlet {
    private static final String ROOT_PACKAGE = "mate";
    private static final String MANUFACTURERS_REQUEST = "/manufacturers";
    private static final String MANUFACTURER_ID_ATTRIBUTE = "manufacturer_id";
    private ManufacturerService manufacturerService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        manufacturerService = (ManufacturerService) injector
                .getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        long manufacturerId = Long.parseLong(req.getParameter(MANUFACTURER_ID_ATTRIBUTE));
        manufacturerService.delete(manufacturerId);
        resp.sendRedirect(getServletContext().getContextPath()
                + MANUFACTURERS_REQUEST);
    }
}
