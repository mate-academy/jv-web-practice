package mate.controller;

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

@WebServlet(urlPatterns = "/add_driver_to_car")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("message", "");
        req.setAttribute("drivers", driverService.getAll());
        req.setAttribute("cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/driver/add_driver_to_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(req.getParameter("car")));
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driver")));
        carService.addDriverToCar(driver, car);
        req.setAttribute("message", "Driver added to car!");
        req.setAttribute("drivers", driverService.getAll());
        req.setAttribute("cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/driver/add_driver_to_car.jsp").forward(req, resp);
    }
}
