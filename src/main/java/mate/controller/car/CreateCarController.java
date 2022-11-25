package mate.controller.car;

import java.io.IOException;
import java.util.ArrayList;
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
import mate.service.ManufacturerService;

@WebServlet("/cars/add")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerName = req.getParameter("manufacturerName");
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(findManufacturer(manufacturerName));
        car.setDrivers(new ArrayList<Driver>());
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }

    private Manufacturer findManufacturer(String manufacturerName) {
        return manufacturerService.getAll().stream()
                .filter(m -> m.getName().equals(manufacturerName))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("No manufacturers with such name"));
    }
}
