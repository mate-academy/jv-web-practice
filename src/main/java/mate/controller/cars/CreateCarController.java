package mate.controller.cars;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class CreateCarController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) INJECTOR.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(manufacturerId));
        car.setDrivers(new ArrayList<>());
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
