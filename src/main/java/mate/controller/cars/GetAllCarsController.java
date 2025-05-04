package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet("/cars/get")
public class GetAllCarsController extends HttpServlet {
    private static final Injector INJECTOR =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/cars/getAllCars.jsp")
                .forward(req, resp);
    }
}
