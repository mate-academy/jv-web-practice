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

@WebServlet (urlPatterns = "/blabla/add_driver") // /add_driver
public class AddDriverToCarController extends HttpServlet {
    private CarService carService;
    private DriverService driverService;

    @Override
    public void init() throws ServletException {
        Injector injector = Injector.getInstance("mate");
        carService = (CarService) injector.getInstance(CarService.class);
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("cars", cars);
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.parseLong(req.getParameter("carId")));
        System.out.println(car);
        Driver driver = driverService.get(Long.parseLong(req.getParameter("driverId")));
        System.out.println(driver);
        carService.addDriverToCar(driver, car);
    }
}
