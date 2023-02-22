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

@WebServlet(urlPatterns = {"/manufacturers/edit"})
@Service
public class EditManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);
    private static final String MANUFACTURER_NAME = "manufacturer_name";
    private static final String MANUFACTURER_COUNTRY = "manufacturer_country";
    private static final String MANUFACTURER_ID = "manufacturer_id";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerId = req.getParameter("manufacturerId");
        if (manufacturerId == null || manufacturerId.length() < 1) {
            throw new RuntimeException("Can not edit manufacturer with empty manufacturerId");
        }
        Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerId));

        req.setAttribute("manufacturer", manufacturer);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/editManufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String manufacturerName = req.getParameter(MANUFACTURER_NAME);
        String manufacturerId = req.getParameter(MANUFACTURER_ID);

        if (manufacturerName == null || manufacturerName.length() < 1) {
            throw new RuntimeException("Field name can not be empty. manufacturerName = "
                    + manufacturerName);
        }

        if (manufacturerId == null) {
            throw new RuntimeException("Field manufacturerId can not be empty");
        }

        String manufacturerCountry = req.getParameter(MANUFACTURER_COUNTRY);

        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setId(Long.valueOf(manufacturerId));
        manufacturer.setName(manufacturerName);
        manufacturer.setCountry(manufacturerCountry);
        manufacturerService.update(manufacturer);
        resp.sendRedirect("/manufacturers");
    }
}
