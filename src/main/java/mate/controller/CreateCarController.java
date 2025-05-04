package mate.controller;

import java.io.IOException;
import java.util.Collections;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService = (CarService)
            injector.getInstance(CarService.class);

    private static final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("allManufacturers", manufacturerService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = new Car();
        String moder = req.getParameter("model");
        Long manufacturerId = Long.parseLong(req.getParameter("manufacturerId"));
        Manufacturer carManufacturer = manufacturerService.get(manufacturerId);
        car.setManufacturer(carManufacturer);
        car.setModel(moder);
        car.setDrivers(Collections.emptyList());
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/");
    }
}
