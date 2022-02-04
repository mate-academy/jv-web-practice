package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/test")
public class InjectDataController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        createDriverObject();
        createDriverObject();

        createCarObject();
        createCarObject();

        req.getRequestDispatcher("/WEB-INF/views/test.jsp").forward(req, resp);
    }

    private String randomNumber () {
        return String.valueOf(new Random().nextInt(10_000));
    }

    private Driver createDriverObject() {
        String randomSuffix = randomNumber();
        Driver driver = new Driver();
        driver.setName("Driver:" + randomSuffix);
        driver.setLicenseNumber(randomSuffix);
        return driverService.create(driver);
    }

    private Manufacturer createManufacturerObject() {
        String randomSuffix = randomNumber();
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName("Manufacturer:" + randomSuffix);
        manufacturer.setCountry("Country:" + randomSuffix);
        return manufacturerService.create(manufacturer);
    }

    private Car createCarObject() {
        Car car = new Car();
        car.setManufacturer(createManufacturerObject());
        car.setModel("Model:" + car.getManufacturer().getName().replaceAll("Manufacturer:", ""));
        List<Driver> emptyDriverList = new ArrayList<>();
        car.setDrivers(emptyDriverList);
        return carService.create(car);
    }
}
