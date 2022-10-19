package mate.controller.manufacturer;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import mate.lib.Injector;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/delete")
public class DeleteManufacturerController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long manufacturerId = Long.valueOf(req.getParameter("id"));
        manufacturerService.delete(manufacturerId);
        resp.sendRedirect(req.getContextPath() + "/manufacturers/all");
    }
}
