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
public class AddDriverForCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String reqDriverId = req.getParameter("driver_id");
        String reqCarId = req.getParameter("car_id");
        if (reqCarId == null || reqDriverId == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
            return;
        }
        Long driverId = Long.parseLong(reqDriverId);
        Long carId = Long.parseLong(reqCarId);
        Driver driver = driverService.get(driverId);
        Car car = carService.get(carId);
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/drivers?carId=" + carId);
    }
}