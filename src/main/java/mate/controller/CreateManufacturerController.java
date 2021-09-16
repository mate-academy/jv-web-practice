package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = {"/manufacturers/add"})
public class CreateManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private boolean successRefresh = false;
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (!successRefresh) {
            req.getRequestDispatcher("/WEB-INF/views/manufacturer/create.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/views/manufacturer/create.jsp").include(req, resp);
            req.getRequestDispatcher("/WEB-INF/views/service/success.jsp").include(req, resp);
            successRefresh = false;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer(name, country);
        manufacturerService.create(manufacturer);
        successRefresh = true;
        resp.sendRedirect("/manufacturers/add");
    }
}
