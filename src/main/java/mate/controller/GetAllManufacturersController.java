package mate.controller;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetAllManufacturersController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/manufacturers.jsp")
                .forward(req, resp);
    }
}
