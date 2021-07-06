package mate.controller;

import java.io.IOException;
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
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/views/add_driver_to_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String stringCarId = req.getParameter("car_id");
        String stringDriverId = req.getParameter("driver_id");
        Long carId = Long.valueOf(stringCarId);
        Long driverId = Long.valueOf(stringDriverId);
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        car.getDrivers().add(driver);
        carService.update(car);
        String message = "Driver is added to car.";
        req.setAttribute("message", message);
        req.getRequestDispatcher("WEB-INF/views/is_done.jsp").forward(req, resp);
    }
}
