package mate.controller.cars;

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

@WebServlet(urlPatterns = "/cars/drivers")
public class CarDriversController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private static final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.parseLong(req.getParameter("carId"));
        Car car = carService.get(carId);
        List<Driver> driverList = driverService.getAll();
        req.setAttribute("driversList", driverList);
        req.setAttribute("drivers", car.getDrivers());
        req.setAttribute("car", car);
        req.getRequestDispatcher("/WEB-INF/views/cars/carDrivers.jsp").forward(req, resp);
    }
}
