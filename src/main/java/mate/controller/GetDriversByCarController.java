package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

public class GetDriversByCarController extends HttpServlet {
    private static final String ROOT_PACKAGE = "mate";
    private static final String DRIVERS_BY_CAR_PAGE = "/WEB-INF/views/driversByCar.jsp";
    private static final String DRIVERS_ATTRIBUTE = "drivers";
    private static final String OTHER_DRIVERS_ATTRIBUTE = "other_drivers";
    private static final String CAR_ID_ATTRIBUTE = "car_id";
    private CarService carService;
    private DriverService driverService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        carService = (CarService) injector
                .getInstance(CarService.class);
        driverService = (DriverService) injector
                .getInstance(DriverService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.parseLong(req.getParameter(CAR_ID_ATTRIBUTE)));
        List<Driver> drivers = car.getDrivers();
        List<Driver> otherDrivers = driverService.getAll().stream()
                .filter(driver -> !drivers.contains(driver))
                .collect(Collectors.toList());
        req.setAttribute(DRIVERS_ATTRIBUTE, drivers);
        req.setAttribute(OTHER_DRIVERS_ATTRIBUTE, otherDrivers);
        req.getRequestDispatcher(DRIVERS_BY_CAR_PAGE).forward(req, resp);
    }
}
