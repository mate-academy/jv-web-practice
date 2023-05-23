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

@WebServlet("/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("id");
        String driverId = req.getParameter("candidateId");
        if (carId != null && driverId != null) {
            Car car = carService.get(Long.valueOf(carId));
            List<Driver> drivers = car.getDrivers();
            Driver driverToAdd = driverService.get(Long.valueOf(driverId));
            drivers.add(driverToAdd);
            car.setDrivers(drivers);
            carService.update(car);
            resp.sendRedirect(req.getContextPath() + "/cars/drivers?id=" + carId);
        }
    }
}
