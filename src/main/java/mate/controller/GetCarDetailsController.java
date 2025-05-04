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

public class GetCarDetailsController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.parseLong(req.getParameter("id")));
        req.setAttribute("car", car);
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/details.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.parseLong(req.getParameter("id")));
        Driver driver = driverService.get(Long.parseLong(req.getParameter("driver_id")));
        carService.addDriverToCar(driver, car);
        doGet(req, resp);
    }
}
