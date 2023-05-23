package mate.controller;

import java.io.IOException;
import java.util.Collections;
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

@WebServlet(urlPatterns = "/cars/add")
public class CreateCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        List<Driver> allDrivers = driverService.getAll();
        req.setAttribute("manufacturers", allManufacturers);
        req.setAttribute("drivers", allDrivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").include(req, resp);
        req.getRequestDispatcher("/WEB-INF/views/headers/tasks.jsp").include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String model = request.getParameter("model");
        Long manufacturerId = Long.valueOf(request.getParameter("manufacturer_id"));
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(manufacturerId));
        car.setDrivers(Collections.emptyList());
        carService.create(car);
        response.sendRedirect(request.getContextPath() + "/cars");
    }
}
