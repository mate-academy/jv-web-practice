package mate.controller;

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
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/create.jsp")
                .forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        car.setManufacturer(manufacturerService.get(manufacturerId));
        List<Driver> drivers = new ArrayList<>();
        car.setDrivers(drivers);
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars/create");
    }
}
