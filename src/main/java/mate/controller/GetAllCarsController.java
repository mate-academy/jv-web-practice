package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetAllCarsController extends HttpServlet {
    private static final String ROOT_PACKAGE = "mate";
    private static final String CARS_PAGE = "/WEB-INF/views/cars.jsp";
    private static final String CARS_ATTRIBUTE = "cars";
    private CarService carService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        carService = (CarService) injector
                .getInstance(CarService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        req.setAttribute(CARS_ATTRIBUTE, cars);
        req.getRequestDispatcher(CARS_PAGE).forward(req, resp);

    }
}
