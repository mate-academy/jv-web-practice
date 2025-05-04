package mate.controller.add;

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
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String CAR_ID = "car_id";
    private static final String DRIVER_ID = "driver_id";

    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/adddrivertocar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = Long.valueOf(req.getParameter(DRIVER_ID));
        Driver driver = driverService.get(driverId);
        Long carId = Long.valueOf(req.getParameter(CAR_ID));
        Car car = carService.get(carId);
        carService.addDriverToCar(driver,car);
        req.getRequestDispatcher("/WEB-INF/views/message/addmessage.jsp")
                .forward(req, resp);
    }
}
