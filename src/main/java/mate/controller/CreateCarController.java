package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");

    private final CarService carService;
    private final ManufacturerService manufacturerService;

    public CreateCarController() {
        carService = (CarService) INJECTOR.getInstance(CarService.class);
        manufacturerService = (ManufacturerService)
            INJECTOR.getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/view/create_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        String model = req.getParameter("model");
        Car car = new Car();
        car.setDrivers(new ArrayList<>());
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(manufacturerId));
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(req, resp);
    }
}
