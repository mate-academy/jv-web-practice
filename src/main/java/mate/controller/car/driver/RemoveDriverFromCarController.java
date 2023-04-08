package mate.controller.car.driver;

import java.io.IOException;
import java.util.List;
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

@WebServlet("/cars/drivers/remove")
public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("id");
        String driverId = req.getParameter("driver");
        if (carId != null) {
            Car car = carService.get(Long.valueOf(carId));
            List<Driver> drivers = car.getDrivers();
            Driver driverToDelete = driverService.get(Long.valueOf(driverId));
            drivers.remove(driverToDelete);
            car.setDrivers(drivers);
            carService.update(car);
            resp.sendRedirect(req.getContextPath() + "/cars/drivers?id=" + carId);
        }
    }
}
