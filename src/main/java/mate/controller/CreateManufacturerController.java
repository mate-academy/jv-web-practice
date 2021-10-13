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
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/add.jsp").forward(req,resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerName = req.getParameter("manufacturerName");
        String country = req.getParameter("country");
        Manufacturer manufacturer = new Manufacturer(manufacturerName,country);
        manufacturerService.create(manufacturer);
        resp.sendRedirect("/index");
    }
}
