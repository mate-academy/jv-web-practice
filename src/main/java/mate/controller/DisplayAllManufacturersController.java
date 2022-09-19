package mate.controller;

import mate.lib.Injector;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/displayAllManufacturers")
public class DisplayAllManufacturersController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("cars", manufacturerService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/manufacturer/manufacturers.jsp").forward(req,resp);
    }
}
