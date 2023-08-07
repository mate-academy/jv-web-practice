package mate.controller.car;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/cars/driver/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService = (CarService)
            injector.getInstance(CarService.class);
    private static final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("cars",cars);
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/driver/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(req.getParameter("car")));
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driver")));
        carService.addDriverToCar(driver,car);
    }
}
