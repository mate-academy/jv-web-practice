package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

public class AddDriverToCarController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverServiceImpl)
            injector.getInstance(DriverService.class);
    private final CarService carService = (CarServiceImpl) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driverId")));
        Car car = carService.get(Long.valueOf(req.getParameter("carId")));
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "cars/drivers/add");
    }
}
