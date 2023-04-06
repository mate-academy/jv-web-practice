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

@WebServlet(urlPatterns = "/manufacturers/update")
public class ManufacturerUpdateController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = manufacturerService.get(Long.valueOf(req.getParameter("id")));
        req.setAttribute("name", manufacturer.getName());
        req.setAttribute("country", manufacturer.getCountry());
        req.setAttribute("id", manufacturer.getId());
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/update.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        long id = Long.parseLong(req.getParameter("id"));
        Manufacturer manufacturer = manufacturerService.get(id);
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        manufacturerService.update(manufacturer);
        resp.sendRedirect("/manufacturers/show");
    }

}
