package mate.controller;

import static mate.controller.GetAllDriversController.injector;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCar extends HttpServlet {
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCars = carService.getAll();
        List<Driver> allDrivers = driverService.getAll();
        req.setAttribute("cars", allCars);
        req.setAttribute("drivers", allDrivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/add-driver-to-car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carFromList = req.getParameter("carFromList");
        String driverFromList = req.getParameter("driverFromList");
        Car car = carService.get(
                Long.parseLong(carFromList.substring(0, carFromList.indexOf("."))));
        Driver driver = driverService.get(
                Long.parseLong(driverFromList.substring(0, carFromList.indexOf("."))));
        carService.addDriverToCar(driver, car);
        resp.sendRedirect("/cars/all");
    }
}
