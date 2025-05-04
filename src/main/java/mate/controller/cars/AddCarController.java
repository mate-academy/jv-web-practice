package mate.controller.cars;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet("/cars/add")
public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService;
    private final ManufacturerService manufacturerService;

    public AddCarController() {
        carService = (CarService)
                injector.getInstance(CarService.class);
        manufacturerService = (ManufacturerService)
                injector.getInstance(ManufacturerService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturer = req.getParameter("manufacturer");
        carService.create(getCar(model, manufacturer));
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }

    private Car getCar(String model, String manufacturer) {
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(getManufacturer(manufacturer));
        car.setDrivers(List.of());
        return car;
    }

    private Manufacturer getManufacturer(String manufacturer) {
        return manufacturerService.get(Long.valueOf(manufacturer));
    }
}
