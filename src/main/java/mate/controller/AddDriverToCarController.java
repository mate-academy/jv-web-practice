package mate.controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final String ROOT_PACKAGE = "mate";
    private static final String DRIVERS_BY_CAR_REQUEST = "/cars/drivers";
    private static final String DRIVER_ID_ATTRIBUTE = "driver_id";
    private static final String CAR_ID_ATTRIBUTE = "car_id";
    private DriverService driverService;
    private CarService carService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        driverService = (DriverService) injector
                .getInstance(DriverService.class);
        carService = (CarService) injector
                .getInstance(CarService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        long driverId = Long.parseLong(req.getParameter(DRIVER_ID_ATTRIBUTE));
        long carId = Long.parseLong(req.getParameter(CAR_ID_ATTRIBUTE));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(getServletContext().getContextPath()
                + DRIVERS_BY_CAR_REQUEST
                + "?" + CAR_ID_ATTRIBUTE + "=" + carId);
    }
}
