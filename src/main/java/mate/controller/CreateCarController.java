package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String model = request.getParameter("model");
        Long manufacturerId = Long.valueOf(request.getParameter("manufacturer_id"));
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(manufacturerId));
        carService.create(car);
    }
}
