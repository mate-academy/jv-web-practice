package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class CreateManufacturerControllet extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    public static final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturer/createManufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerName = req.getParameter("manufacturerName");
        String manufacturerCountry = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(manufacturerName);
        manufacturer.setCountry(manufacturerCountry);
        manufacturerService.create(manufacturer);
    }
}
