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

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;
    private DriverService driverService;

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/add_driver.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driver_id")));
        Car car = carService.get(Long.valueOf(req.getParameter("car_id")));
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/car/driver_added.jsp").forward(req,resp);
    }

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class);
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }
}
