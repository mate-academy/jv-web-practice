package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    public static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    public static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Car createdCar = new Car();
        String carModel = req.getParameter("car_model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        List<Driver> defaultDrivers = new ArrayList<>();
        Manufacturer carManufacturer = manufacturerService.get(manufacturerId);
        createdCar.setModel(carModel);
        createdCar.setManufacturer(carManufacturer);
        createdCar.setDrivers(defaultDrivers);
        carService.create(createdCar);
        resp.sendRedirect("/done");
    }
}
