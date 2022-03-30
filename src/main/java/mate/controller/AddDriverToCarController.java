package mate.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/cars/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverName = req.getParameter("driver_name");
        String carModel = req.getParameter("car_model");
        Car carToUpdate = getCarByModel(carModel).get();
        Driver driverToAdd = getDriverByName(driverName).get();
        carService.addDriverToCar(driverToAdd, carToUpdate);
    }

    private Optional<Driver> getDriverByName(String name) {
        List<Driver> drivers = driverService.getAll();
        for (Driver driver: drivers) {
            if (driver.getName().equals(name)) {
                return Optional.ofNullable(driver);
            }
        }
        return Optional.empty();
    }

    private Optional<Car> getCarByModel(String name) {
        List<Car> cars = carService.getAll();
        for (Car car: cars) {
            if (car.getModel().equals(name)) {
                return Optional.ofNullable(car);
            }
        }
        return Optional.empty();
    }
}
