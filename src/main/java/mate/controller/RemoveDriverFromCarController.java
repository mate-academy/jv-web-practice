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
    private static Injector injector = Injector.getInstance("mate");
    private CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long car_id = Long.parseLong(req.getParameter("car_id"));
        Car car = carService.get(car_id);
        Driver driver = driverService.get(Long.parseLong(req.getParameter("driver_id")));
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/details?id=" + car_id);
    }
}
