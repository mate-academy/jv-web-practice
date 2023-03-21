package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");

    private final CarService carService;
    private final DriverService driverService;

    public AddDriverToCarController() {
        carService = (CarService) INJECTOR.getInstance(CarService.class);
        driverService = (DriverService)
            INJECTOR.getInstance(DriverService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/view/add_driver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        carService.addDriverToCar(driverService.get(driverId), carService.get(carId));
        req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);
    }
}
