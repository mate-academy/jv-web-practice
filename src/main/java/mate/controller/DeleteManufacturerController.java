package mate.controller;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/manufacturers/delete")
public class DeleteManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.valueOf(req.getParameter("id"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        manufacturerService.delete(manufacturerId);
        req.setAttribute("manufacturer", manufacturer);
        req.getRequestDispatcher("/WEB-INF/views/deleteManufacturer.jsp").forward(req, resp);
    }
}
