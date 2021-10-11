package mate.controller.cars;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverCarController extends HttpServlet {
    private final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    private final List<Car> cars = carService.getAll();
    private final List<Driver> drivers = driverService.getAll();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/driver_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        if (!checkCarId(carId) && !checkDriverId(driverId)) {
            req.setAttribute("bothError", true);
            req.setAttribute("carId", carId);
            req.setAttribute("driverId", driverId);
            req.getRequestDispatcher("/WEB-INF/views/cars/driver_car.jsp").forward(req, resp);
        }
        if (!checkCarId(carId)) {
            req.setAttribute("carIdError", true);
            req.setAttribute("carId", carId);
            req.getRequestDispatcher("/WEB-INF/views/cars/driver_car.jsp").forward(req, resp);
        }
        if (!checkDriverId(driverId)) {
            req.setAttribute("driverId", driverId);
            req.setAttribute("driverIdError", true);
            req.getRequestDispatcher("/WEB-INF/views/cars/driver_car.jsp").forward(req, resp);
        }
        req.setAttribute("withoutError", true);
        req.setAttribute("carId", carId);
        req.setAttribute("driverId", driverId);
        req.getRequestDispatcher("/WEB-INF/views/cars/driver_car.jsp").forward(req, resp);
    }

    private boolean checkDriverId(Long id) {
        for (Driver driver: drivers) {
            if (driver.getId() == id) {
                return true;
            }
        }
        return false;
    }

    private boolean checkCarId(Long id) {
        for (Car car: cars) {
            if (car.getId() == id) {
                return true;
            }
        }
        return false;
    }
}
