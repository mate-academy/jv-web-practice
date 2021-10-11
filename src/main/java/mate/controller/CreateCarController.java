package mate.controller;

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

@WebServlet(urlPatterns = "/cars/create")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", allManufacturers);
        req.getRequestDispatcher("/WEB-INF/views/cars/create_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String model = req.getParameter("model");
            String manufacturerId = req.getParameter("manufacturer_id");
            Manufacturer manufacturer = manufacturerService.get(Long.parseLong(manufacturerId));
            Car car = new Car(model, manufacturer);
            carService.create(car);
            req.setAttribute("car", model);
            req.getRequestDispatcher("/WEB-INF/views/cars/car_created.jsp").forward(req, resp);
        } catch (RuntimeException e) {
            req.getRequestDispatcher("/WEB-INF/views/incorrect/input_error.jsp").forward(req, resp);
        }

    }
}
