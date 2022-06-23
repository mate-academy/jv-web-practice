package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/del")
public class DeleteManufacturerController extends HttpServlet {
    private static final String REDIRECT_LOCATION = "/manufacturers";
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        manufacturerService.delete(id);
        resp.sendRedirect(req.getContextPath() + REDIRECT_LOCATION);
    }
}
