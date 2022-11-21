package mate.controller.add;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/add")
public class AddManufacturersController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String MANUFACTURER_NAME = "manufacturerName";
    private static final String MANUFACTURER_COUNTRY = "manufacturerCountry";
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(req.getContextPath()
                        + "/WEB-INF/views/manufacturers/addmanufacturer.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter(MANUFACTURER_NAME));
        manufacturer.setCountry(req.getParameter(MANUFACTURER_COUNTRY));
        manufacturerService.create(manufacturer);
        req.getRequestDispatcher(req.getContextPath()
                + "/WEB-INF/views/message/addmessage.jsp").forward(req, resp);
    }
}
