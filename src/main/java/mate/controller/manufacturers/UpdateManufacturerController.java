package mate.controller.manufacturers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/update")
public class UpdateManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.parseLong(req.getParameter("manufacturerId"));
        String name = req.getParameter("manufacturerName");
        String manufacturerCountry = req.getParameter("manufacturerCountry");
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        if (!name.isEmpty()) {
            manufacturer.setName(name);
        }
        if (!manufacturerCountry.isEmpty()) {
            manufacturer.setCountry(manufacturerCountry);
        }
        manufacturerService.update(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
