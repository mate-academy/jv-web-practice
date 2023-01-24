package mate.controller.car;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;

@WebServlet(urlPatterns = "car/create")
public class CreateCarController extends HttpServlet {
    Injector injector
            = Injector.getInstance("mate");
    ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    CarService carService
            = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp) throws ServletException, IOException {
        Manufacturer manufacturer
                = manufacturerService.get(Long.valueOf(req.getParameter("manufacturer_id")));
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturer);
        car.setDrivers(Collections.emptyList());
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/load.jsp").forward(req, resp);
    }
}
