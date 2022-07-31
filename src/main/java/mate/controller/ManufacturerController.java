package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

public class ManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer;
        try {
            manufacturer = manufacturerService.get(
                    Long.valueOf(req.getParameter("manufacturer_id")));
        } catch (RuntimeException e) {
            manufacturer = new Manufacturer();
        }
        req.setAttribute("manufacturer",manufacturer);
        req.setAttribute("title","editing manufacturer");
        req.getRequestDispatcher("/WEB-INF/views/manufacturer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Manufacturer manufacturer = new Manufacturer();
        try {
            manufacturer.setId(Long.valueOf(req.getParameter("manufacturer_id")));
        } catch (RuntimeException e) {
            manufacturer.setId(null);
        }

        manufacturer.setName(req.getParameter("name"));
        manufacturer.setCountry(req.getParameter("country"));

        if (manufacturer.getId() == null) {
            manufacturerService.create(manufacturer);
        } else {
            manufacturerService.update(manufacturer);
        }
        String path = req.getContextPath() + "/manufacturers";
        resp.sendRedirect(path);
    }
}
