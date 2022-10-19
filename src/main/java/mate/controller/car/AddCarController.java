package mate.controller.car;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Car car = new Car();
        car.setModel(model);
        Manufacturer carManufacturer = manufacturerService.get(manufacturerId);
        car.setManufacturer(carManufacturer);
        List<Driver> drivers = new ArrayList<>();
        car.setDrivers(drivers);
        carService.create(car);
        resp.sendRedirect("request.getContextPath()" + "/cars/all");
    }
}
