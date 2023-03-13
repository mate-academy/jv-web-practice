package mate.controller.car;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    static final String REQUEST_DISPATCHER = "/WEB-INF/cars/createCar.jsp";
    static final String MANUFACTURER_ID = "manufacturer";
    static final String CAR_MODEL = "model";
    private static final List<Driver> drivers = new ArrayList<>();
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(REQUEST_DISPATCHER).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long id = Long.valueOf(req.getParameter(MANUFACTURER_ID));
        Car car = new Car();
        Manufacturer manufacturer = manufacturerService.get(id);
        car.setModel(req.getParameter(CAR_MODEL));
        car.setManufacturer(manufacturer);
        car.setDrivers(drivers);
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
