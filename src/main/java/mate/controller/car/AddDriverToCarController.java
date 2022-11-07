package mate.controller.car;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cars/add_driver")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Driver> allDrivers = driverService.getAll();
        List<Car> allCars = carService.getAll();
        req.setAttribute("listDrivers", allDrivers);
        req.setAttribute("listCars", allCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int driverId = Integer.parseInt(req.getParameter("driver"));
        int carId = Integer.parseInt(req.getParameter("car"));
        Driver driver = driverService.getAll().stream()
                .filter(d -> d.getId() == driverId)
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Can't find driver by id " + driverId));
        Car car = carService.getAll().stream()
                .filter(c -> c.getId() == carId)
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Can't find car by id " + carId));
        carService.addDriverToCar(driver, car);
    }
}
