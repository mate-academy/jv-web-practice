package mate.controller.cars;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class CarsDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Map<Driver, List<Car>> carDrivers = new HashMap<>();
        for (Driver driver : driverService.getAll()) {
            carDrivers.put(driver, carService.getAllByDriver(driver.getId()));
        }
        req.setAttribute("carDrivers", carDrivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/carsDrivers.jsp").forward(req, resp);
    }
}
