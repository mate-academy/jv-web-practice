package mate.controller.carcontroller;

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
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerId = req.getParameter("manufacturer_id");
        if (!model.isEmpty() && !manufacturerId.isEmpty()) {
            Manufacturer manufacturer = manufacturerService.get(Long.parseLong(manufacturerId));
            Car car = new Car();
            car.setModel(model);
            car.setManufacturer(manufacturer);
            car.setDrivers(new ArrayList<>());
            carService.create(car);
            resp.sendRedirect(req.getContextPath() + "/cars");
        } else {
            resp.sendRedirect(req.getContextPath() + "/cars/add");
        }
    }
}
