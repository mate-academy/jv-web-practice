package mate.controller.manufacturer;

import java.io.IOException;
import java.util.List;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/manufacturers")
public class ShowAllManufacturersController extends HttpServlet {
    private static final String PAGE_TITLE = "list of manufacturers";
    private static final String PAGE_HEADER = "All manufacturers of cars";
    private static final String PAGE_DIRECTORY = "/WEB-INF/views/manufacturers/list.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("page_title", PAGE_TITLE);
        req.setAttribute("page_header", PAGE_HEADER);
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher(PAGE_DIRECTORY).forward(req, resp);
    }
}
