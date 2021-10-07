package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/cars/all"})
public class DisplayCarsController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    public final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        request.setAttribute("cars", cars);
        request.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(request, response);
    }
}
