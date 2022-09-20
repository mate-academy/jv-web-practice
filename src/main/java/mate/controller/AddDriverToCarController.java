package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> allDrivers = driverService.getAll();
        req.setAttribute("drivers", allDrivers);
        List<Car> allCars = carService.getAll();
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher("/WEB-INF/views/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driverId")));
        Car car = carService.get(Long.valueOf(req.getParameter("carId")));
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
