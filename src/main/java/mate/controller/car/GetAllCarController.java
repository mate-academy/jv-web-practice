package mate.controller.car;

import mate.lib.Injector;
import mate.model.Car;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/all")
public class GetAllCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService
            carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> carList = carService.getAll();
        req.setAttribute("cars", carList);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
