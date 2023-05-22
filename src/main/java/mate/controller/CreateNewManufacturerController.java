package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class CreateNewManufacturerController extends HttpServlet {
    private static final String PATH = "/WEB-INF/views/manufacturers/create.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(PATH).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        Manufacturer newManufacturer = new Manufacturer();
        newManufacturer.setName(name);
        newManufacturer.setCountry(country);
        manufacturerService.create(newManufacturer);
        doGet(req, resp);
    }
}
