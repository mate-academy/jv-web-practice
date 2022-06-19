package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RemoveDriverFromCarController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse
            resp) throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Injector injector = Injector.getInstance("mate");
        CarService carService = (CarService) injector.getInstance(CarService.class);
        Car car = carService.get(carId);
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        Driver driver = driverService.get(driverId);
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect("/cars/car?id=" + carId);
    }
}
