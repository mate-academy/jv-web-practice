package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(name = "displayAllManufacturer", urlPatterns = "/manufacturers")
public class GetAllManufacturerController extends GenericController {
    private static final String JSP_PATH = "displayAllManufacturer.jsp";
    private final ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }
}
