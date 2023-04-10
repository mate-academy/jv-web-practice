package mate.controller.car;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Car car = carService.get(id);
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("car", car);
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/cars/adddriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(req.getParameter("car")));
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driver")));
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/all");
    }
}
