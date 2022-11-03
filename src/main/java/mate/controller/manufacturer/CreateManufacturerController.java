package mate.controller.manufacturer;

import mate.lib.Injector;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateManufacturerController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Injector injector = Injector.getInstance("mate");
        ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        String name = req.getParameter("manufacturer");
        String country = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        Manufacturer newManufacturer = manufacturerService.create(manufacturer);
        req.setAttribute("manufacturer_id",newManufacturer.getId());
        req.setAttribute("manufacturer_name",newManufacturer.getName());
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/created_successfully.jsp")
                .forward(req,resp);
    }
}
