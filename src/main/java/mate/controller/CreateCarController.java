package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String model = req.getParameter("carModel");
        String manufacturer = req.getParameter("carManufacturer");
        Car newCar = toCar(model, manufacturer);
        Long manufacturerId = newCar.getManufacturer().getId();
        if (carService.getByModelAndManufacturerId(model, manufacturerId).isEmpty()) {
            carService.create(newCar);
        } else {
            carService.update(newCar);
        }
    }

    private Car toCar(String carModel, String сarManufacturer) {
        return new Car(carModel, manufacturerService
                .getManufacturerByName(сarManufacturer).get());
    }
}
