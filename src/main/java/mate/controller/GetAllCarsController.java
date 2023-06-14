package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.service.CarService;

@WebServlet(name = "displayAllCars", urlPatterns = "/cars")
public class GetAllCarsController extends GenericController {
    private static final String JSP_PATH = "displayAllCars.jsp";
    private final CarService carService =
            (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCars = carService.getAll();
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }
}
