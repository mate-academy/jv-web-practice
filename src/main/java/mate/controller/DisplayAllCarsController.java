package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

public class DisplayAllCarsController extends HttpServlet {
    private final CarService carService;

    {
        Injector injector = Injector.getInstance("mate");
        carService = (CarService) injector.getInstance(CarService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCar = carService.getAll();
        req.setAttribute("cars", allCar);
        req.getRequestDispatcher("/WEB-INF/views/allCars.jsp").forward(req, resp);
    }
}
