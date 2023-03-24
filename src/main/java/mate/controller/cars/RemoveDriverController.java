package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.CarService;
import mate.service.DriverService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/cars/drivers/delete"})
public class RemoveDriverController extends HttpServlet {
    private static final String CAR_ID = "car_id";
    private static final String DRV_ID = "driver_id";
    private final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter(CAR_ID);
        String driverId = req.getParameter(DRV_ID);

        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can't delete empty car Id: "
                    + carId);
        }
        if (driverId == null || driverId.length() < 1) {
            throw new RuntimeException("Can't delete empty driver Id: "
                    + driverId);
        }

        carService.removeDriverFromCar(
                driverService.get(Long.valueOf(driverId)),
                carService.get(Long.valueOf(carId)));
        resp.sendRedirect("/cars");
    }
}
