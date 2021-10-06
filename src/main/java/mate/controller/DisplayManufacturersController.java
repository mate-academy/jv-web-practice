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

@WebServlet(urlPatterns = {"/display-manufacturers"})
public class DisplayManufacturersController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    public final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        request.setAttribute("manufacturers", manufacturers);
        request.getRequestDispatcher("WEB-INF/views/display-manufacturers.jsp").forward(request, response);
    }
}
