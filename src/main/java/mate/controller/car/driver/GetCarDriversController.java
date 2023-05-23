package mate.controller.car.driver;

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

@WebServlet("/cars/drivers")
public class GetCarDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        if (id != null) {
            Car car = carService.get(Long.valueOf(id));
            List<Driver> drivers = car.getDrivers();
            List<Driver> candidates = driverService.getAll();
            candidates.removeAll(drivers);
            req.setAttribute("car", car);
            req.setAttribute("drivers", drivers);
            req.setAttribute("candidates", candidates);
            req.getRequestDispatcher("/WEB-INF/views/cars-drivers.jsp")
                    .forward(req, resp);
        }
    }
}
