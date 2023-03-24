package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.CarService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/cars"})
public class ReadCarsController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/cars/readCars.jsp").forward(req, resp);
    }
}
