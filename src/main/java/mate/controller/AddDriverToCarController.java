package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(name = "addDriverToCar", urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends GenericController {
    private static final String JSP_PATH = "addDriverToCar.jsp";
    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) INJECTOR.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        carService.addDriverToCar(getDriver(req), getCar(req));
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    private Driver getDriver(HttpServletRequest req) {
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        return driverService.get(driverId);
    }

    private Car getCar(HttpServletRequest req) {
        Long carId = Long.valueOf(req.getParameter("car_id"));
        return carService.get(carId);
    }
}
