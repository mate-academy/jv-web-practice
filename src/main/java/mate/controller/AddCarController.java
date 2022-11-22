package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;

public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;
    private ManufacturerService manufacturerService;

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class);
        manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/add_car.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerId = req.getParameter("manufacturer_id");
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(Long.parseLong(manufacturerId)));
        car.setDrivers(Collections.emptyList());
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
