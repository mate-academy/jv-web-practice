package mate.controller.car;

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
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carManufacturer = req.getParameter("carManufacturer");
        String carModel = req.getParameter("carModel");
        String driverName = req.getParameter("driverName");
        Car car = findCar(carManufacturer, carModel);
        Driver driver = findDriver(driverName);
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }

    private Driver findDriver(String driverName) {
        return driverService.getAll().stream()
                .filter(driver -> driver.getName().equals(driverName))
                .findFirst()
                .orElseThrow(() -> new RuntimeException("No driver with such name"));
    }

    private Car findCar(String carManufacturer, String carModel) {
        return carService.getAll().stream()
                .filter(car -> car.getModel().equals(carModel)
                        && car.getManufacturer().getName().equals(carManufacturer))
                .findFirst()
                .orElseThrow(() ->
                        new RuntimeException("No car with such manufacturer abd  model"));
    }
}
