package mate.controller;

import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

public class CreateCarController extends HttpServlet {
    final CarService carService = new CarServiceImpl();
    final ManufacturerService manufacturerService = new ManufacturerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String model = req.getParameter("carModel");
        String manufacturer = req.getParameter("carManufacturer");
        Car newCar = convertToCar(model, manufacturer);
        if (isNotExist(newCar)) {
            carService.create(newCar);
        } else {
            carService.update(newCar);
        }
    }

    private boolean isNotExist(Car newCar) {
        return carService.getAll().stream()
                .filter(car -> car.getModel().equals(newCar.getModel())
                        && car.getManufacturer().equals(newCar.getManufacturer()))
                .findFirst()
                .isEmpty();
    }

    private Car convertToCar(String carModelStr, String carManufacturerStr) {
        return new Car(carModelStr, getManufacturerByName(carManufacturerStr));
    }

    private Manufacturer getManufacturerByName(String name) {
        List<Manufacturer> all = manufacturerService.getAll();
        Optional<Manufacturer> manufacturer = all.stream()
                .filter(m -> m.equals(name))
                .findFirst();
        return manufacturer.get();
    }
}
