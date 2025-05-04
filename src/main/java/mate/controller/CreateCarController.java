package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

@WebServlet("/cars/addcar")
public class CreateCarController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/newcar.jsp").forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carModel = req.getParameter("carmodel");
        Long carManufacturerId = Long.valueOf(req.getParameter("carmanufacturerid"));
        Manufacturer manufacturer = manufacturerService.get(carManufacturerId);
        Long carDriverId = Long.valueOf(req.getParameter("cardriverid"));
        Driver driver = driverService.get(carDriverId);
        List<Driver> drivers = new ArrayList<>();
        drivers.add(driver);
        Car car = new Car();
        car.setModel(carModel);
        car.setManufacturer(manufacturer);
        car.setDrivers(drivers);
        carService.create(car);
        resp.sendRedirect("/index");
    }

}
