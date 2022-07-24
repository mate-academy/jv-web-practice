package mate.controller;

import mate.lib.Injector;

import java.io.IOException;
import java.util.List;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/delete.jsp").forward(req, resp);
        Long manufacturer_id = Long.valueOf(req.getParameter("manufacturer_id"));
        manufacturerService.delete(manufacturer_id);
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
