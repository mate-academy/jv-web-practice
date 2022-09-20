package mate.controller.car.driver;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;
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
import mate.service.DriverService;

@WebServlet(urlPatterns = "/cars/drivers/*")
public class GetAllCarDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private List<Driver> drivers;
    private CarService carService;
    private DriverService driverService;
    private static final int ID_POSITION = 1;

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class);
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getPathInfo().split("/")[ID_POSITION];
        Car car = carService.get(Long.valueOf(id));
        String model = car.getModel();
        drivers = car.getDrivers();
        req.setAttribute("id", id);
        req.setAttribute("model", model);
        Manufacturer manufacturer = car.getManufacturer();
        req.setAttribute("manufacturer", manufacturer);
        req.setAttribute("drivers", drivers);
        List<Driver> driversRemained = driverService.getAll()
                .stream()
                .filter(d -> !drivers.contains(d))
                .collect(Collectors.toList());
        req.setAttribute("driversRemained", driversRemained);
        req.getRequestDispatcher("/WEB-INF/views/car/drivers.jsp").forward(req, resp);
    }
}
