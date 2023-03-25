package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;

@WebServlet(urlPatterns = "/car/create")
public class CreateCarWithoutDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carModel = req.getParameter("model");
        Long manufacturerId = Long.parseLong(req.getParameter("id"));
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setId(manufacturerId);
        Car car = new Car();
        car.setModel(carModel);
        car.setManufacturer(manufacturer);
        car.setDrivers(new ArrayList<>());
        carService.create(car);
    }
}
