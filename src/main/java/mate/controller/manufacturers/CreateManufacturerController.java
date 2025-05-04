package mate.controller.manufacturers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = {"/manufacturers/create"})
@Service
public class CreateManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);
    private static final String MANUFACTURER_NAME = "manufacturer_name";
    private static final String MANUFACTURER_COUNTRY = "manufacturer_country";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/createManufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerName = req.getParameter(MANUFACTURER_NAME);
        String manufacturerCountry = req.getParameter(MANUFACTURER_COUNTRY);

        if (manufacturerName == null || manufacturerName.length() < 1) {
            throw new RuntimeException("Field name can not be empty. manufacturerName = "
                    + manufacturerName);
        }

        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(manufacturerName);
        manufacturer.setCountry(manufacturerCountry);

        manufacturerService.create(manufacturer);
        resp.sendRedirect("/manufacturers");
    }
}
