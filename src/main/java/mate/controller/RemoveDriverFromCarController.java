package mate.controller;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
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

@WebServlet(name = "deleteDriverFromCar", urlPatterns = {"/car/drivers/remove"})
public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.parseLong(req.getParameter("car_id"));
        Long driverId = Long.parseLong(req.getParameter("driver_id"));
        Car car = carService.get(carId);
        List<Driver> drivers = car.getDrivers()
                .stream()
                .filter(d -> !Objects.equals(d.getId(), driverId))
                .collect(Collectors.toList());
        car.setDrivers(drivers);
        carService.update(car);
        resp.sendRedirect(req.getContextPath() + "/car");
    }
}
