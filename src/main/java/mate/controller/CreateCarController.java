package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class CreateCarController extends HttpServlet {
    private final Injector injector = Injector.getInstance("mate");

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {
        final CarService carService
                = (CarService) injector.getInstance(CarService.class);
        final ManufacturerService manufacturerService
                = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(manufacturerId));
        car.setDrivers(new ArrayList<>());
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
