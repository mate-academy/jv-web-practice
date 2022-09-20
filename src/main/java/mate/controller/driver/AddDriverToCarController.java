package mate.controller.driver;

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

@WebServlet(urlPatterns = "/cars/add/driver")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate"); // be careful with copy-paste
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/addToCar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        Long carId = Long.valueOf(req.getParameter("car_id"));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
