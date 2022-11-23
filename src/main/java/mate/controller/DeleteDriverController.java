package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class DeleteDriverController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) INJECTOR.getInstance(DriverService.class);
    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Driver driver = driverService.get(id);
        carService.getAllByDriver(id).forEach(car -> carService.removeDriverFromCar(driver, car));
        driverService.delete(id);
        resp.sendRedirect("/drivers");
    }
}
