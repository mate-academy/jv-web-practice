package mate.controller.cars;

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
    private static final Injector injector = Injector
            .getInstance("mate");
    private final CarService carService = (CarService)
            injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriverToCar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        Driver driver = driverService.get(driverId);
        Car car = carService.get(carId);
        if (driver == null) {
            throw new RuntimeException("Driver with this id don`t exist id = " + driverId);
        }
        if (car == null) {
            throw new RuntimeException("Car with this id don`t exist id = " + carId);
        }
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }
}
