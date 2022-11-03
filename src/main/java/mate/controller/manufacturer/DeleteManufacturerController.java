package mate.controller.manufacturer;

import mate.lib.Injector;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteManufacturerController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Injector injector = Injector.getInstance("mate");
        ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        Long id = Long.valueOf(req.getParameter("id"));
        manufacturerService.delete(id);
        req.setAttribute("manufacturer_id", id);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/deleted_successfully.jsp")
                .forward(req,resp);
    }
}
