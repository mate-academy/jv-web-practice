package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = {"/cars/drivers/add"})
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService = (CarService)
            injector.getInstance(CarService.class);
    private static final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("carId");
        String driverId = req.getParameter("driverId");

        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can not delete driver from undefined Car. carId = "
                    + carId);
        }

        if (driverId == null || driverId.length() < 1) {
            throw new RuntimeException("Can not delete driver with empty driverId. driverId = "
                    + driverId);
        }

        carService.addDriverToCar(
                driverService.get(Long.valueOf(driverId)),
                carService.get(Long.valueOf(carId))
        );
        resp.sendRedirect("/cars/edit-drivers?carId=" + carId);
    }
}
