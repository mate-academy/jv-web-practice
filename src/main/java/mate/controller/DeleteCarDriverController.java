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

public class DeleteCarDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("car_id");
        Driver driver = driverService.get(Long.parseLong(req.getParameter("driver_id")));
        Car car = carService.get(Long.parseLong(carId));
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/manage?id=" + carId);
    }
}
