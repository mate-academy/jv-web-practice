package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class AddCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerName = req.getParameter("manufacturerName");
        String manufactureCountry = req.getParameter("manufactureCountry");
        String model = req.getParameter("model");
        Manufacturer manufacturer
                = new Manufacturer(manufacturerName, manufactureCountry);
        manufacturerService.create(manufacturer);
        Car car = new Car(model, manufacturer);
        List<Driver> drivers = new ArrayList<>();
        car.setDrivers(drivers);
        carService.create(car);
    }
}
