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
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/creatingCar")
public class CreatingCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = manufacturerService.get(
                Long.parseLong(req.getParameter("manufacturer_id")));
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturer);
        car.setDrivers(new ArrayList<>());
        carService.create(car);

        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }
}
