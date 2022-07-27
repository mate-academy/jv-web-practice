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
import mate.service.CarServiceImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

public class AddCarController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarServiceImpl) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerServiceImpl)
            injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter("manufacturerName"));
        manufacturer.setCountry(req.getParameter("manufacturerCountry"));
        manufacturer = manufacturerService.create(manufacturer);

        Car car = new Car();
        car.setManufacturer(manufacturer);
        car.setModel(req.getParameter("carModel"));
        car.setDrivers(new ArrayList<Driver>());

        carService.create(car);
    }
}
