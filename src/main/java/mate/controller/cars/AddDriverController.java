package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;
import mate.util.Injector;

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final String CAR_ID = "car_id";
    private static final String DRV_ID = "driver_id";
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriver.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter(CAR_ID);
        String driverId = req.getParameter(DRV_ID);

        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can't get empty car Id: "
                    + carId);
        }
        if (driverId == null || driverId.length() < 1) {
            throw new RuntimeException("Can't get empty driver Id: "
                    + driverId);
        }

        Car car = carService.get(Long.valueOf(carId));
        Driver driver = driverService.get(Long.valueOf(driverId));

        carService.addDriverToCar(driver, car);
        resp.sendRedirect("/cars");
    }
}
