package mate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/")
public class DisplayAllCarsController extends HttpServlet{
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException {
        List<Car> carList = carService.getAll();
        req.setAttribute("cars",carList);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").include(req,resp);
        req.getRequestDispatcher("/WEB-INF/views/allCars.jsp").include(req,resp);
    }
}
