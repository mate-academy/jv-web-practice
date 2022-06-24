package mate.controller.car_driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/drivers")
public class ShowDriversForCarController extends HttpServlet {
    private static final String PAGE_TITLE = "list of drivers for the car";
    private static final String PAGE_HEADER = "Show all drivers for the car";
    private static final String PAGE_DIRECTORY = "/WEB-INF/views/cars_drivers/list.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long car_id = Long.valueOf(req.getParameter("car_id"));
        Car car = carService.get(car_id);
        req.setAttribute("page_title", PAGE_TITLE);
        req.setAttribute("page_header", PAGE_HEADER);
        req.setAttribute("car", car);
        req.getRequestDispatcher(PAGE_DIRECTORY).forward(req, resp);
    }
}
