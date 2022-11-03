package mate.controller.car;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateCarController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Injector injector = Injector.getInstance("mate");
        CarService carService = (CarService) injector.getInstance(CarService.class);
        ManufacturerService manufacturerService
                = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturer);
        Car newCar = carService.create(car);
        req.setAttribute("car_model", newCar.getModel());
        req.setAttribute("car_id", newCar.getId());
        req.getRequestDispatcher("/WEB-INF/views/cars/created_successfully.jsp")
                .forward(req, resp);
    }
}
