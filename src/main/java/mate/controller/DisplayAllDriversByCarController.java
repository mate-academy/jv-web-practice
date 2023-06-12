package mate.controller;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;
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

@WebServlet(urlPatterns = "/cars/drivers")
public class DisplayAllDriversByCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String reqCarId = req.getParameter("car_id");
        if (reqCarId == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        Long carId = Long.parseLong(reqCarId);
        Car car = carService.get(carId);
        req.setAttribute("car", car);
        List<Driver> drivers = driverService.getAll()
                .stream().filter(x -> !car.getDrivers().contains(x))
                .collect(Collectors.toList());
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/car-drivers.jsp").forward(req, resp);
    }
}
