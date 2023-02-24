package mate.controller.manufacturers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = {"/manufacturers/delete"})
public class DeleteManufacturerController extends HttpServlet {
    private Injector injector = Injector.getInstance("mate");
    private ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerId = req.getParameter("manufacturerId");
        if (manufacturerId == null || manufacturerId.length() < 1) {
            throw new RuntimeException("Can not delete manufacturer with empty id");
        }

        manufacturerService.delete(Long.valueOf(manufacturerId));
        resp.sendRedirect("/manufacturers");
    }
}
