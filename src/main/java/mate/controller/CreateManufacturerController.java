package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class CreateManufacturerController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/createManufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        manufacturerService.create(manufacturer);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/createManufacturer.jsp")
                .forward(req, resp);
    }
}
