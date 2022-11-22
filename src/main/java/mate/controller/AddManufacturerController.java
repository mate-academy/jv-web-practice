package mate.controller;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private ManufacturerService manufacturerService;

    @Override
    public void init() throws ServletException {
        manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/add_manufacturer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
