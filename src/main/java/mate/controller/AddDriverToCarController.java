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
    private DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        List<Car> cars = carService.getAll();
        req.setAttribute("drivers", drivers);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.parseLong(req.getParameter("car_id")));
        Driver driver = driverService.get(Long.parseLong(req.getParameter("driver_id")));
        carService.addDriverToCar(driver, car);
        resp.sendRedirect("/cars");
    }
}
