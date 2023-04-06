package mate.controller;

import java.io.IOException;
import java.util.Collections;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/create")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService)
            injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = new Car();
        String model = req.getParameter("model");
        long manufacturerId = Long.parseLong(req.getParameter("manufacturer_id"));
        if (model == null || manufacturerId == 0) {
            throw new RuntimeException("Model and manufacturer_id can't be null. model: "
                    + model + ", manufacturer_id: " + manufacturerId);
        }
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(manufacturerId));
        car.setDrivers(Collections.emptyList());
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/service");
    }
}
