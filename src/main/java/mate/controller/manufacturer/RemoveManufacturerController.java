package mate.controller.manufacturer;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturer/delete")
public class RemoveManufacturerController extends HttpServlet {
    private final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        long id = Long.parseLong(req.getParameter("id"));
        manufacturerService.delete(id);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
