package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
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

public class CarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car;
        try {
            car = carService.get(Long.valueOf(req.getParameter("car_id")));
        } catch (RuntimeException e) {
            car = new Car();
        }

        try {
            car.setManufacturer(manufacturerService.get(
                    Long.valueOf(req.getParameter("manufacturer_id"))));
        } catch (RuntimeException e) {
            System.out.println(e.getMessage());
        }

        req.setAttribute("car",car);
        req.setAttribute("title","edit car");
        req.getRequestDispatcher("/WEB-INF/views/car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        Car car = null;
        try {
            car = carService.get(Long.valueOf(req.getParameter("car_id")));
        } catch (RuntimeException e) {
            car = new Car();
            car.setDrivers(new ArrayList<Driver>());
        }

        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);

        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturer);

        if (car.getId() == null) {
            carService.create(car);
        } else {
            carService.update(car);
        }
        String path = req.getContextPath() + "/cars";
        resp.sendRedirect(path);
    }
}
