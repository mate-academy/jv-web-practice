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
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String manufacturerName = (request.getParameter("name"));
        String manufacturerCountry = (request.getParameter("country"));
        Manufacturer manufacturer = new Manufacturer(manufacturerName, manufacturerCountry);
        manufacturerService.create(manufacturer);
        String message = "Manufacturer is created, id: " + manufacturer.getId();
        request.setAttribute("message", message);
        request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
    }
}
