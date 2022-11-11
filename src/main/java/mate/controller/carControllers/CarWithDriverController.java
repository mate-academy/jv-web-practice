package mate.controller.carControllers;

import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/cars/withDrivers")
public class CarWithDriverController extends HttpServlet {
    Injector injector = Injector.getInstance("mate");
    CarService carService;
    DriverService driverService;

    public CarWithDriverController() {
        carService = (CarService)
                injector.getInstance(CarService.class);
        driverService = (DriverService)
                injector.getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Car> carsWithDrivers = carService.getAll();
        System.out.println(carsWithDrivers);
        req.setAttribute("cars", carsWithDrivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/operations/allWithDrivers.jsp")
                .forward(req, resp);
    }
}
