package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class DisplayAllCarsController extends HttpServlet {
    private static final String INJECTOR_INSTANCE = "mate";
    private static final Injector injector = Injector.getInstance(INJECTOR_INSTANCE);
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    private ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/car/cars.jsp").forward(req, resp);
    }
}
