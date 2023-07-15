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
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private static final String ALL_CARS_JSP = "/WEB-INF/views/car/allCars.jsp";
    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCars = carService.getAll();
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher(ALL_CARS_JSP).forward(req, resp);
    }
}
