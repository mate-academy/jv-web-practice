package mate.controller;

import mate.lib.Injector;
import mate.service.CarService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetAllCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/show_cars.jsp").forward(req, resp);
    }
}
