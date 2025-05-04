package mate.controller.car.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/drivers")
public class GetAllDriversByCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute(
                "car",
                carService.get(Long.valueOf(req.getParameter("car_id"))));
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers.jsp").forward(req, resp);
    }
}
