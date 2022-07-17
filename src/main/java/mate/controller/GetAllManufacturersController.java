package mate.controller;

import mate.lib.Injector;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name= "getAllManufacturers", urlPatterns = "/manufacturers/all")
public class GetAllManufacturersController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", allManufacturers);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/all.jsp").forward(req, resp);
    }
}
