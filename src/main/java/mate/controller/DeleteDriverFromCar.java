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

@WebServlet(urlPatterns = "/drivers/cars/delete")
public class DeleteDriverFromCar extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/DeleteDriverFromCar.jsp").forward(req, resp);
        Car car = carService.get(Long.valueOf(req.getParameter("car_id")));
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driver_id")));
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/main");
    }
}
