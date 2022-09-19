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

@WebServlet(urlPatterns = "/cars/drivers/remove")
public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driver_id")));
        Car car = carService.get(Long.valueOf(req.getParameter("car_id")));
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("drivers", driverService.getAll());
        req.setAttribute("cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/addDriverToCarOrRemove.jsp")
                .forward(req, resp);
    }
}
