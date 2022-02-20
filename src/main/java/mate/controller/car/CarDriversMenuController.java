package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/cars/drivers")
public class CarDriversMenuController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("carId"));
        Car car = carService.get(id);
        List<Driver> driversOfCar = carService.get(id).getDrivers();
        List<Driver> allDrivers = driverService.getAll();
        allDrivers.removeAll(carService.get(id).getDrivers());
        req.setAttribute("driversOfCar", driversOfCar);
        req.setAttribute("allDrivers", allDrivers);
        req.setAttribute("car", car);
        req.getRequestDispatcher("/WEB-INF/views/carDrivers.jsp").forward(req, resp);
    }
}
