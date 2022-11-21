package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class AddCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.setAttribute("drivers", driverService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/car/add_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        List<Driver> drivers;
        String[] driversId = req.getParameterMap().get("drivers");
        if (driversId != null) {
            drivers = Arrays.stream(driversId)
                    .map(Long::valueOf)
                    .map(driverService::get)
                    .collect(Collectors.toList());
        } else {
            drivers = new ArrayList<>();
        }
        Car car = new Car();
        car.setManufacturer(manufacturer);
        car.setModel(model);
        car.setDrivers(drivers);
        carService.create(car);
        resp.sendRedirect("/cars");
    }
}
