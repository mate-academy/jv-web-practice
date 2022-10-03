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

public class GetAllCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        List<Car> carList = carService.getAll();
        request.setAttribute("cars", carList);
        request.getRequestDispatcher("/WEB-INF/views/cars.jsp").forward(request, response);
    }
}
