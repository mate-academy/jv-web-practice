package mate.controller.car;

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
public class AddNewDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/create.jsp").include(req, resp);
        List<Car> cars = carService.getAll();
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/cars.jsp").include(req, resp);
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/drivers/drivers.jsp").include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Car car = carService.get(carId);
        if (id.equals("")) {
            String name = req.getParameter("name");
            String licenseNumber = req.getParameter("license_number");
            Driver driver = new Driver(name, licenseNumber);
            driverService.create(driver);
            carService.addDriverToCar(driver, car);
        } else {
            Long driverId = Long.valueOf(id);
            Driver driver = driverService.get(driverId);
            carService.addDriverToCar(driver, car);
        }
        resp.sendRedirect("/cars");
    }
}
