package mate.controller;

import static mate.controller.GetAllDriversController.injector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.CarService;
import mate.service.DriverService;

public class DeleteCarController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        CarService carService = (CarService) injector.getInstance(CarService.class);
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        String driverId = req.getParameter("driverId");
        String carId = req.getParameter("carId");
        if (driverId == null) {
            carService.delete(Long.valueOf(carId));
        } else {

            carService.removeDriverFromCar(driverService.get(Long.valueOf(driverId)),
                    carService.get(Long.valueOf(carId)));
        }
        resp.sendRedirect("/cars/all");
    }

}
