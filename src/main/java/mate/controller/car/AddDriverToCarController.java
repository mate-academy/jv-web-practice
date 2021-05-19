package mate.controller.car;

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

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final String ADD_DRIVER_TO_CAR_VIEW_PATH
            = "/WEB-INF/views/car/driver/addDriverToCar.jsp";
    private static final String CARS_ATTRIBUTE_NAME = "cars";
    private static final String DRIVERS_ATTRIBUTE_NAME = "drivers";
    private static final String CAR_ID_PARAMETER_NAME = "car_id";
    private static final String DRIVER_ID_PARAMETER_NAME = "driver_id";
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        List<Driver> drivers = driverService.getAll();
        req.setAttribute(CARS_ATTRIBUTE_NAME, cars);
        req.setAttribute(DRIVERS_ATTRIBUTE_NAME, drivers);
        req.getRequestDispatcher(ADD_DRIVER_TO_CAR_VIEW_PATH).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.parseLong(req.getParameter(CAR_ID_PARAMETER_NAME));
        Long driverId = Long.parseLong(req.getParameter(DRIVER_ID_PARAMETER_NAME));
        Driver driver = driverService.get(driverId);
        Car car = carService.get(carId);
        carService.addDriverToCar(driver, car);
    }
}
