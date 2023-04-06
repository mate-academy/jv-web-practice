package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(name = "chooseDriverToAdd", urlPatterns = {"/cars/drivers/add"})
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        System.out.println(req.getParameter("driver_id"));
        Long driverId = Long.parseLong(req.getParameter("driver_id"));
        Long carId = Long.parseLong(req.getParameter("car_id"));
        Driver driver = driverService.get(driverId);
        Car car = carService.get(carId);
        car.getDrivers().add(driver);
        carService.update(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
