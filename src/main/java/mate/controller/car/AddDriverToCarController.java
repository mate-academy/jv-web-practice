package mate.controller.car;

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

@WebServlet("/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> carList = carService.getAll();
        List<Driver> driverList = driverService.getAll();
        req.setAttribute("cars", carList);
        req.setAttribute("drivers", driverList);
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        Car currentCar = carService.get(carId);
        Driver currentDriver = driverService.get(driverId);
        carService.addDriverToCar(currentDriver, currentCar);
        resp.sendRedirect("/cars/drivers/add");
    }
}
