package mate.controller.driver;

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
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/drivers/cars/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/addToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        Car car = carService.findCar(carId).orElse(null);
        Driver driver = driverService.findDriver(driverId).orElse(null);
        if (car == null) {
            req.setAttribute("invalidInput", "car");
            req.setAttribute("id", carId);
        }
        if (driver == null) {
            req.setAttribute("invalidInput", "driver");
            req.setAttribute("id", Long.valueOf(req.getParameter("driver_id")));
        }
        req.getRequestDispatcher("/WEB-INF/views/driver/addToCar.jsp").forward(req, resp);
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/info/saved.jsp").forward(req, resp);
    }
}
