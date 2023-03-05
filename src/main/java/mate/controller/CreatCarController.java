package mate.controller;

import java.io.IOException;
import java.util.List;
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

@WebServlet("/car/creat")
public class CreatCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private Manufacturer manufacturer;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/creat.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        String manufacturerName = req.getParameter("manufacturer");
        String countryName = req.getParameter("country");
        for (Manufacturer m: allManufacturers) {
            if (m.getCountry().equals(countryName) && m.getName().equals(manufacturerName)) {
                manufacturer = m;
                break;
            }
        }
        if (manufacturer == null) {
            Manufacturer manufacturer = new Manufacturer();
            manufacturer.setName(req.getParameter("manufacturer"));
            manufacturer.setCountry(req.getParameter("country"));
            manufacturerService.create(manufacturer);
        }
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturer);
        carService.create(car);
        resp.sendRedirect("/success");
    }
}
