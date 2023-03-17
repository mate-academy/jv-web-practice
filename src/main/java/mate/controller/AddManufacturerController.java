package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class AddManufacturerController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String manufacturerName = request.getParameter("manufacturer_name");
        String manufacturerCountry = request.getParameter("manufacturer_country");
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(manufacturerName);
        manufacturer.setCountry(manufacturerCountry);
        manufacturerService.create(manufacturer);

        response.sendRedirect(request.getContextPath() + "/manufacturers/all");
    }

}
