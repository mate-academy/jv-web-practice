package mate.controller;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/cars/delete/")
public class DeleteDriverCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        Long carId = Long.valueOf(req.getParameter("carId"));
        Driver driver = driverService.get(driverId);
        Car car = carService.get(carId);
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/drivers/cars");
    }
}
