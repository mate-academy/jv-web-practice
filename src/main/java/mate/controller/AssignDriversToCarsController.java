package mate.controller;

import java.io.IOException;
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
public class AssignDriversToCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static CarService carService = (CarService) injector.getInstance(CarService.class);
    private static DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Car car = carService.get(carId);
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        Driver driver = driverService.get(driverId);
        carService.addDriverToCar(driver,car);
        resp.sendRedirect("/index");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/assign_drivers_cars.jsp").forward(req, resp);
    }
}
