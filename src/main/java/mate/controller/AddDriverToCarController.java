package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate"); // be careful with copy-paste

    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driverId")));
        Car car = carService.get(Long.valueOf(req.getParameter("carId")));
        carService.addDriverToCar(driver, car);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }
}
