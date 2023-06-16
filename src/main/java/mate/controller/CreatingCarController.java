package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

public class CreatingCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("controller");

    private final CarService carService
            = (CarServiceImpl) injector.getInstance(CarServiceImpl.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector
            .getInstance(ManufacturerServiceImpl.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverServiceImpl.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/creating.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        Long manufacturerID = Long.valueOf(req.getParameter("manufacturer_id"));
        Long firstDriversId = Long.valueOf(req.getParameter("first_drivers_id"));
        Long secondDriverId = Long.valueOf(req.getParameter("second_driver_id"));
        Long thirdDriversId = Long.valueOf(req.getParameter("third_drivers_id"));
        Long foursDriversId = Long.valueOf(req.getParameter("fours_drivers_id"));
        Car car = new Car();
        car.setModel(model);
        Manufacturer manufacturer = manufacturerService.get(manufacturerID);
        car.setManufacturer(manufacturer);
        Driver firstDriver = driverService.get(firstDriversId);
        Driver secondDriver = driverService.get(secondDriverId);
        Driver thirdDriver = driverService.get(thirdDriversId);
        Driver foursDriver = driverService.get(foursDriversId);
        List<Driver> driverList = new ArrayList<>();
        driverList.add(firstDriver);
        driverList.add(secondDriver);
        driverList.add(thirdDriver);
        driverList.add(foursDriver);
        car.setDrivers(driverList);
        carService.create(car);
    }
}
