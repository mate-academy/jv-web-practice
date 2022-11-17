package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.exception.DataProcessingException;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/postCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = new Car();
        List<Driver> drivers = new ArrayList<>();
        car.setDrivers(drivers);
        car.setModel(req.getParameter("model").toLowerCase());
        ManufacturerService manufacturerService
                = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        String manufacturerName = req.getParameter("manufacturer");
        Manufacturer manufacturer = manufacturerService
                .getAll()
                .stream()
                .filter(f -> f.getName().equals(manufacturerName))
                .findFirst()
                .orElseThrow(() ->
                        new DataProcessingException("Unsapported manufacturer "
                                + manufacturerName));
        car.setManufacturer(manufacturer);
        CarService carService = (CarService) injector.getInstance(CarService.class);
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }
}
