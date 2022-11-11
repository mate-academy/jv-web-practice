package mate.controller.manufacturers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.ManufacturerService;

@WebServlet("/manufacturers/delete")
public class ManufacturersDeleteController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService;

    public ManufacturersDeleteController() {
        manufacturerService = (ManufacturerService)
                injector.getInstance(ManufacturerService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        manufacturerService.delete(Long.valueOf(id));
        req.getRequestDispatcher("/WEB-INF/views/success.jsp")
                .forward(req, resp);
    }
}
