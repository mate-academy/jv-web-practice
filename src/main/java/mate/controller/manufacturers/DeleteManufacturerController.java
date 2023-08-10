package mate.controller.manufacturers;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/manufacturers/delete")
public class DeleteManufacturerController extends HttpServlet {
    private static final Injector INJECTOR =
            Injector.getInstance("mate");
    private static final ManufacturerService MANUFACTURER_SERVICE =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        MANUFACTURER_SERVICE.delete(Long.valueOf(req.getParameter("id")));
        resp.sendRedirect(req.getContextPath() + "/manufacturers/get");
    }
}
