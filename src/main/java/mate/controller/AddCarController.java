package mate.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private List<Manufacturer> allManufacturers = manufacturerService.getAll();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("manufacturers", allManufacturers);
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String manufacturerId = req.getParameter("manufacturer");
        Manufacturer manufacturer = allManufacturers.get(Integer.parseInt(manufacturerId) - 1);
        String model = req.getParameter("model");
        List<Driver> drivers = Collections.emptyList();
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturer);
        car.setDrivers(drivers);
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars/all");
    }
}
