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
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        setAttributes(req);
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.parseLong(req.getParameter("manufacturer"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        String model = req.getParameter("model");
        Car car = new Car();
        car.setManufacturer(manufacturer);
        car.setModel(model);
        car.setDrivers(new ArrayList<Driver>());
        Car newCar = carService.create(car);
        String driverIdInput = req.getParameter("driver");
        if (!driverIdInput.isEmpty()) {
            Long driverId = Long.parseLong(driverIdInput);
            Driver driver = driverService.get(driverId);
            carService.addDriverToCar(driver, newCar);
        }
        setAttributes(req);
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    private void setAttributes(HttpServletRequest req) {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.setAttribute("drivers", drivers);
    }
}
