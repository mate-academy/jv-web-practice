package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("controller");

    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverServiceImpl.class);
    private final CarService carService
            = (CarService) injector.getInstance(CarServiceImpl.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add-to-car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driversId = Long.valueOf(req.getParameter("driver_id"));
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Driver driver = driverService.get(driversId);
        Car car = carService.get(carId);
        carService.addDriverToCar(driver, car);
    }
}
