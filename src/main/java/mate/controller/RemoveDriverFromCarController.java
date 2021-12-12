package mate.controller;

import static mate.controller.GetAllDriversController.injector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.CarService;
import mate.service.DriverService;

public class RemoveDriverFromCarController extends HttpServlet {
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String driverId = req.getParameter("driverId");
        String carId = req.getParameter("carId");
        carService.removeDriverFromCar(driverService.get(Long.valueOf(driverId)),
                carService.get(Long.valueOf(carId)));
        resp.sendRedirect("/cars/all");
    }
}
