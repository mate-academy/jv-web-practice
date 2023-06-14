package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(name = "addManufacturer", urlPatterns = "/manufacturers/add")
public class CreateManufacturerController extends GenericController {
    private static final String JSP_PATH = "addManufacturer.jsp";
    private final ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = initializeManufacturerByRequest(req);
        manufacturerService.create(manufacturer);
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    private Manufacturer initializeManufacturerByRequest(HttpServletRequest req) {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        return new Manufacturer(name, country);
    }
}
