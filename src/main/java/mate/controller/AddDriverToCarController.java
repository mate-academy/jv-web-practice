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
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(req.getParameter("carId")));
        List<Driver> drivers = driverService.getAll();
        List<Driver> driversByCar = car.getDrivers();
        drivers.removeAll(driversByCar);
        if (drivers.size() > 0) {
            req.setAttribute("car", car);
            req.setAttribute("drivers", drivers);
            req.getRequestDispatcher("/WEB-INF/views/drivers/add-driver-to-car.jsp")
                    .forward(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/cars");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Car car = carService.get(carId);
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        if (car.getDrivers().stream().filter(d -> d.getId() == driverId).count() == 0) {
            Driver driver = driverService.get(driverId);
            carService.addDriverToCar(driver, car);
        }
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
