package mate.controller;

import mate.lib.Injector;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetAllManufacturersController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private ManufacturerService manufacturerService;

    @Override
    public void init() throws ServletException {
        manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/show_manufacturers.jsp").forward(req, resp);
    }
}
