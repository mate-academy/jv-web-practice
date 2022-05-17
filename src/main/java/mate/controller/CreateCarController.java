package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/create")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ManufacturerService manufacturerService =
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        request.setAttribute("allManufacturers", allManufacturers);
        request.getRequestDispatcher("/WEB-INF/views/cars/create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ManufacturerService manufacturerService =
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
        Manufacturer manufacturer
                = manufacturerService.get(Long.valueOf(request.getParameter("manufacturer_id")));
        List<Driver> drivers = new ArrayList<>();
        Car car = new Car();
        car.setModel(request.getParameter("model"));
        car.setManufacturer(manufacturer);
        car.setDrivers(drivers);
        CarService carService = (CarService) injector.getInstance(CarService.class);
        carService.create(car);
        response.sendRedirect("/index");
    }
}
