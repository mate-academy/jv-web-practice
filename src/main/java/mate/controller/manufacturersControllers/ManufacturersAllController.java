package mate.controller.manufacturersControllers;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/manufacturers")
public class ManufacturersAllController extends HttpServlet {
    static final Injector injector = Injector.getInstance("mate");
    ManufacturerService manufacturerService;

    public ManufacturersAllController() {
        manufacturerService = (ManufacturerService)
                injector.getInstance(ManufacturerService.class);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", allManufacturers);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/operations/all.jsp")
                .forward(req, resp);
    }
}
