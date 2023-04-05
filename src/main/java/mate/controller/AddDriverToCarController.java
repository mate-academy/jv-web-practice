package mate.controller;

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
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Driver driver = driverService.get(Long.parseLong(req.getParameter("driverId")));
        Car car = carService.get(Long.parseLong(req.getParameter("carId")));
        carService.addDriverToCar(driver,car);
        if (car.getDrivers().contains(driver)) {
            resp.sendRedirect("/message-box?referer="
                    + req.getHeader("Referer")
                    + "&msg=Driver: " + driver.getId()
                    + ", successfully added to car: " + car.getId() + "!");
        }
    }
}
