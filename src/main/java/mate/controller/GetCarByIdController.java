package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class GetCarByIdController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Injector injector = Injector.getInstance("mate");
        CarService carService = (CarService) injector.getInstance(CarService.class);
        Long carId = Long.valueOf(req.getParameter("id"));
        Car car = carService.get(carId);
        List<Driver> carDrivers = car.getDrivers();
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        List<Driver> allDrivers = driverService.getAll();
        allDrivers.removeAll(carDrivers);
        req.setAttribute("car", car);
        req.setAttribute("drivers", carDrivers);
        req.setAttribute("driversToAdd", allDrivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/car.jsp").forward(req, resp);
    }
}
