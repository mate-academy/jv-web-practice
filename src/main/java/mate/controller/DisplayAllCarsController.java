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
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService)injector.getInstance(ManufacturerService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.setAttribute("drivers", driverService.getAll());
        req.setAttribute("cars",carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/car/displayAll.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> carList = carService.getAll();
        req.setAttribute("cars", carList);
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/displayAll.jsp").forward(req,resp);
    }
}
