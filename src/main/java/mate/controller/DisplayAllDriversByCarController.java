package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

@WebServlet(name = "allDriversByCar", urlPatterns = {"/car/drivers"})
public class DisplayAllDriversByCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.parseLong(req.getParameter("car_id")));
        req.setAttribute("drivers",car.getDrivers());
        req.setAttribute("id",car.getId());
        req.getRequestDispatcher("/WEB-INF/views/displayAllDriversByCar.jsp").forward(req,resp);
    }
}
