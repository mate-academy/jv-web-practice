package mate.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import java.io.IOException;

public class CreateManufacturerController extends HttpServlet {
    ManufacturerService manufacturerService;
    @Override
    public void init() throws ServletException {
        Injector injector = Injector.getInstance("mate");
        manufacturerService =
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/views/create_manufacturer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter("manufacturerName"));
        manufacturer.setCountry(req.getParameter("country"));
        manufacturerService.create(manufacturer);
    }
}
