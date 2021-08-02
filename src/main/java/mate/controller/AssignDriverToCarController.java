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

@WebServlet(urlPatterns = {"/cars/drivers/assign"})
public class AssignDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private boolean successRefresh = false;
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCars = carService.getAll();
        req.setAttribute("cars", allCars);
        List<Driver> allDrivers = driverService.getAll();
        req.setAttribute("drivers", allDrivers);
        if (!successRefresh) {
            req.getRequestDispatcher("/WEB-INF/views/car/assign_driver.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/views/car/assign_driver.jsp").include(req, resp);
            req.getRequestDispatcher("/WEB-INF/views/service/success.jsp").include(req, resp);
            successRefresh = false;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        Long carId = Long.valueOf(req.getParameter("carId"));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        carService.addDriverToCar(driver, car);
        successRefresh = true;
        resp.sendRedirect("/cars/drivers/assign");
    }
}
