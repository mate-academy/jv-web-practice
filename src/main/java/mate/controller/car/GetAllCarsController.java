package mate.controller.car;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet(urlPatterns = "/cars/all")
public class GetAllCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        Map<Car, List<Driver>> carDriverMap = new HashMap<>();
        for (Car car : cars) {
            carDriverMap.put(car, car.getDrivers());
        }
        req.setAttribute("carDriverList", carDriverMap);
        req.getRequestDispatcher("/WEB-INF/views/cars/allCars.jsp").forward(req, resp);
    }
}
