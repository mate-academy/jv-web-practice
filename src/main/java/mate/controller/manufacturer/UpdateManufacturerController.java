package mate.controller.manufacturer;

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
    private static final Injector injector =
            Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturer/updateManufacturer.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerId = req.getParameter("manufacturer_id");
        String manufacturerName = req.getParameter("manufacturer_name");
        String manufacturerCountry = req.getParameter("manufacturer_country");
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setId(Long.valueOf(manufacturerId));
        manufacturer.setName(manufacturerName);
        manufacturer.setCountry(manufacturerCountry);
        manufacturerService.update(manufacturer);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
