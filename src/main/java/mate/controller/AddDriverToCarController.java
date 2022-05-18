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

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Driver> allDrivers = driverService.getAll();
        request.setAttribute("allDrivers", allDrivers);
        List<Car> allCars = carService.getAll();
        request.setAttribute("allCars", allCars);
        request.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(request.getParameter("car_id")));
        Driver driver = driverService.get(Long.valueOf(request.getParameter("driver_id")));
        carService.addDriverToCar(driver, car);
        response.sendRedirect(request.getContextPath() + "/index");
    }
}
