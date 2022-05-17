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
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/services/fix")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DriverService driverService =
                (DriverService) injector.getInstance(DriverService.class);
        List<Driver> allDrivers = driverService.getAll();
        request.setAttribute("allDrivers", allDrivers);
        CarService carService =
                (CarService) injector.getInstance(CarService.class);
        List<Car> allCars = carService.getAll();
        request.setAttribute("allCars", allCars);
        request.getRequestDispatcher("/WEB-INF/views/services/fix.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CarService carService = (CarService) injector.getInstance(CarService.class);
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        Car car = carService.get(Long.valueOf(request.getParameter("car_id")));
        Driver driver = driverService.get(Long.valueOf(request.getParameter("driver_id")));
        carService.addDriverToCar(driver, car);
        response.sendRedirect("/index");
    }
}
