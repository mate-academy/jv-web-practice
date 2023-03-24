package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Service;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/manufacturers/update"})
@Service
public class UpdateManufacturerController extends HttpServlet {
    private static final String MFR_ID = "manufacturer_id";
    private static final String MFR_NAME = "manufacturer_name";
    private static final String MFR_COUNTRY = "manufacturer_country";
    private static final Injector injector =
            Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerId = req.getParameter(MFR_ID);

        if (manufacturerId == null || manufacturerId.length() < 1) {
            throw new RuntimeException("Can't get empty manufacturer Id: "
                    + manufacturerId);
        }

        Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerId));

        req.setAttribute("manufacturer", manufacturer);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/updateManufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String manufacturerId = req.getParameter(MFR_ID);
        String manufacturerName = req.getParameter(MFR_NAME);

        if (manufacturerName == null || manufacturerName.length() < 1) {
            throw new RuntimeException("Can't update empty manufacturer name: "
                    + manufacturerName);
        }
        if (manufacturerId == null) {
            throw new RuntimeException("Can't get empty manufacturer Id");
        }

        String manufacturerCountry = req.getParameter(MFR_COUNTRY);
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setId(Long.valueOf(manufacturerId));
        manufacturer.setName(manufacturerName);
        manufacturer.setCountry(manufacturerCountry);

        manufacturerService.update(manufacturer);
        resp.sendRedirect("/manufacturers");
    }
}
