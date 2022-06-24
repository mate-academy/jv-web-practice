package mate.controller.car_driver;

import java.io.IOException;
import java.util.List;
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
    private static final String PAGE_TITLE = "add a drive to a car";
    private static final String PAGE_HEADER = "Add a new driver to the car";
    private static final String PAGE_DIRECTORY = "/WEB-INF/views/cars_drivers/add.jsp";
    private static final String REDIRECT_LOCATION = "/cars/drivers";
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        Long car_id = Long.valueOf(req.getParameter("car_id"));
        Car car = carService.get(car_id);
        car.getDrivers().forEach(drivers::remove);

        req.setAttribute("page_title", PAGE_TITLE);
        req.setAttribute("page_header", PAGE_HEADER);
        req.setAttribute("car", car);
        req.setAttribute("drivers", drivers);

        req.getRequestDispatcher(PAGE_DIRECTORY).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long driver_id = Long.valueOf(req.getParameter("driver_id"));
        Long car_id = Long.valueOf(req.getParameter("car_id"));

        Car car = carService.get(car_id);
        Driver driver = driverService.get(driver_id);
        carService.addDriverToCar(driver, car);

        resp.sendRedirect(req.getContextPath() + REDIRECT_LOCATION + "?car_id=" + car_id);
    }
}
