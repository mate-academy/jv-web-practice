package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/register")
public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        if (!getManufacturerFromList(req.getParameter("manufacturer")).isPresent()) {
            req.getRequestDispatcher("/WEB-INF/views/manufacturers/infoMessage.jsp")
                    .forward(req, resp);
        }
        car.setManufacturer(getManufacturerFromList(req.getParameter("manufacturer")).get());
        car.setDrivers(new ArrayList<>());
        carService.create(car);
        doGet(req, resp);
    }

    private Optional<Manufacturer> getManufacturerFromList(String manufacturerName) {
        List<Manufacturer> allManufacturer = manufacturerService.getAll();
        Manufacturer neededManufacturer = null;
        for (Manufacturer manufacturer: allManufacturer) {
            if (manufacturer.getName().equals(manufacturerName)) {
                neededManufacturer = manufacturer;
                break;
            }
        }
        return Optional.ofNullable(neededManufacturer);
    }
}
