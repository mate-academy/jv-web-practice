package mate.controller;

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

@WebServlet(urlPatterns = "/cars/cars")
public class GetAllCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.valueOf(request.getParameter("id"));
        carService.delete(id);
        response.sendRedirect(request.getContextPath() + "/cars/cars");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> currentCars = carService.getAll();
        req.setAttribute("cars", currentCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/cars.jsp").forward(req, resp);
    }
}
