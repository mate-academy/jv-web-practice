package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(req.getParameter("id")));
        List<Driver> driversIntoCar = car.getDrivers();
        List<Driver> allDrivers = driverService.getAll();
        allDrivers.removeAll(driversIntoCar);
        req.setAttribute("car", car);
        req.setAttribute("drivers", allDrivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(req.getParameter("id")));
        Driver newDriver = driverService.get(Long.valueOf(req.getParameter("driver_id")));
        carService.addDriverToCar(newDriver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/drivers/add?id" + car.getId());
    }
}
