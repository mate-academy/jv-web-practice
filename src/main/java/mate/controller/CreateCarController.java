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

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/Cars/createCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturerId"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        String model = req.getParameter("model");
        List<Driver> driverList = new ArrayList<>();
        Car car = new Car();
        car.setManufacturer(manufacturer);
        car.setModel(model);
        car.setDrivers(driverList);
        carService.create(car);
    }
}

