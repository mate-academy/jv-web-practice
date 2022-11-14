package mate.controller.car;

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

@WebServlet("/cars/drivers/remove")
public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService;
    private final DriverService driverService;

    public RemoveDriverFromCarController() {
        carService = (CarService)
                injector.getInstance(CarService.class);
        driverService = (DriverService)
                injector.getInstance(DriverService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getParameter("id");
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        carService.removeDriverFromCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/success.jsp")
                .forward(req, resp);
    }
}
