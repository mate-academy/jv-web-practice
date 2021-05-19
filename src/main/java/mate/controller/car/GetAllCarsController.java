package mate.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars")
public class GetAllCarsController extends HttpServlet {
    private static final String ALL_CARS_VIEW_PATH
            = "WEB-INF/views/car/allCars.jsp";
    private static final String CARS_ATTRIBUTE_NAME = "cars";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        req.setAttribute(CARS_ATTRIBUTE_NAME, cars);
        req.getRequestDispatcher(ALL_CARS_VIEW_PATH).forward(req, resp);
    }
}
