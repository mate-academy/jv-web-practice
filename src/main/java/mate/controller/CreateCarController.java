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

@WebServlet (urlPatterns = "/create_car")
public class CreateCarController extends HttpServlet {
    private CarService carService;
    private ManufacturerService manufacturerService;

    @Override
    public void init() throws ServletException {
        Injector injector = Injector.getInstance("mate");
        carService = (CarService) injector.getInstance(CarService.class);
        manufacturerService =
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", allManufacturers);
        req.getRequestDispatcher("WEB-INF/views/create_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer =
                manufacturerService.get(Long.parseLong(req.getParameter("manufacturer_id")));
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturer);
        car.setDrivers(new ArrayList<Driver>());
        carService.create(car);
    }
}
