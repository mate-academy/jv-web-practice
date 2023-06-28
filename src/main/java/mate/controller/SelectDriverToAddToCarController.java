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

@WebServlet("/cars/drivers/select_to_add")
public class SelectDriverToAddToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    private CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Car currentCar = carService.get(carId);
        List<Driver> currentCarDrivers = currentCar.getDrivers();
        List<Driver> allAvailableDrivers = driverService.getAll();
        allAvailableDrivers.removeAll(currentCarDrivers);
        req.setAttribute("carId", carId);
        req.setAttribute("drivers", allAvailableDrivers);
        req.getRequestDispatcher("/WEB-INF/views/car/addDriver.jsp").forward(req, resp);
    }
}
