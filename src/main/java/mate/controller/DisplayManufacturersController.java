package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class DisplayManufacturersController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService;

    public DisplayManufacturersController() {
        manufacturerService = (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher("/WEB-INF/view/display_manufacturers.jsp").forward(req, resp);

        Long id = Long.valueOf(req.getParameter("id"));
        manufacturerService.delete(id);
    }
}
