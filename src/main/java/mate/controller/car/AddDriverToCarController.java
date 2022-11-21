package mate.controller.car;

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

@WebServlet("/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector inject = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) inject.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) inject.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add/addDriverToCar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        long carId = Long.parseLong(req.getParameter("car_id"));
        long driverId = Long.parseLong(req.getParameter("driver_id"));
        Driver driver = driverService.get(driverId);
        carService.get(carId).getDrivers().add(driver);
        Car car = carService.get(carId);
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add/driverAddedToCarSuccess.jsp")
                .forward(req, resp);
    }
}
