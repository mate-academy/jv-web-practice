package mate.controller.manufacturers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.ManufacturerService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/manufacturers/delete"})
public class DeleteManufacturerController extends HttpServlet {
    private static final String MFR_ID = "manufacturer_id";
    private final Injector injector =
            Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerId = req.getParameter(MFR_ID);

        if (manufacturerId == null || manufacturerId.length() < 1) {
            throw new RuntimeException("Can't delete manufacturer "
                    + "with empty id: " + manufacturerId);
        }

        manufacturerService.delete(Long.valueOf(manufacturerId));
        resp.sendRedirect("/manufacturers");
    }
}
