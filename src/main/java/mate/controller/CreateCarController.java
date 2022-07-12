package mate.controller;

import java.io.IOException;
import java.util.Collections;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/taxi/cars/createCar.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long id = Long.valueOf(req.getParameter("manufacturerId"));
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturerService.get(id));
        car.setDrivers(Collections.emptyList());
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars/all");
    }
}
