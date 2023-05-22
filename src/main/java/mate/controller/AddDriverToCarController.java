package mate.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private List<Driver> allDrivers = driverService.getAll();
    private List<Car> allCars = carService.getAll();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("drivers", allDrivers);
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverSelected = req.getParameter("driver");
        Driver driver = allDrivers.get(Integer.parseInt(driverSelected) - 1);
        String carSelected = req.getParameter("car");
        Car car = allCars.get(Integer.parseInt(carSelected) - 1);
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/all");
    }
}
