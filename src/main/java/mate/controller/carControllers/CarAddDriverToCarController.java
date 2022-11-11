package mate.controller.carControllers;

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

@WebServlet("/cars/addDriveToCar")
public class CarAddDriverToCarController extends HttpServlet {
    Injector injector = Injector.getInstance("mate");
    CarService carService;
    DriverService driverService;

    public CarAddDriverToCarController() {
        carService = (CarService)
                injector.getInstance(CarService.class);
        driverService = (DriverService)
                injector.getInstance(DriverService.class);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/operations/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        Driver driver = driverService.get(driverId);
        if (driver == null) {
            throw new RuntimeException("No driver in DB with id " + driverId);
        }
        Car car = carService.get(carId);
        if (car == null) {
            throw new RuntimeException("No car in DB with id " + carId);
        }
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }
}
