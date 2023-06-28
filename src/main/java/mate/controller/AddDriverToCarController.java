package mate.controller;

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

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        setAttributes(req);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.parseLong(req.getParameter("car"));
        long driverId = Long.parseLong(req.getParameter("driver"));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        if (!car.getDrivers().contains(driver)) {
            carService.addDriverToCar(driver, car);
        }
        setAttributes(req);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
    }

    private void setAttributes(HttpServletRequest req) {
        List<Car> cars = carService.getAll();
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("cars", cars);
        req.setAttribute("drivers", drivers);
    }
}
