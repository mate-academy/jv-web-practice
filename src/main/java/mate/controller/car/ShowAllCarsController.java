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
public class ShowAllCarsController extends HttpServlet {
    private static final String PAGE_TITLE = "list of cars";
    private static final String PAGE_HEADER = "Show all cars";
    private static final String PAGE_DIRECTORY = "/WEB-INF/views/cars/list.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        req.setAttribute("page_title", PAGE_TITLE);
        req.setAttribute("page_header", PAGE_HEADER);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher(PAGE_DIRECTORY).forward(req, resp);
    }
}
