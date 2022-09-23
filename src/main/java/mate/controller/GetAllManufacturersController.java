package mate.controller;

import mate.lib.Injector;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetAllManufacturersController extends HttpServlet {
    Injector injector = Injector.getInstance("mate");
    ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        request.setAttribute("manufacturers", allManufacturers);
        request.getRequestDispatcher("/WEB-INF/views/getAllManufacturers.jsp").forward(request, response);
    }
}
