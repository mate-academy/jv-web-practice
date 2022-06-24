package mate.controller.car.driver;

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

@WebServlet(urlPatterns = "/cars/drivers/delete")
public class DeleteDriverFromCarController extends HttpServlet {
    private static final String REDIRECT_LOCATION = "/cars/drivers";
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        Long carId = Long.valueOf(req.getParameter("car_id"));

        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        carService.removeDriverFromCar(driver, car);

        resp.sendRedirect(req.getContextPath() + REDIRECT_LOCATION + "?car_id=" + carId);
    }
}
