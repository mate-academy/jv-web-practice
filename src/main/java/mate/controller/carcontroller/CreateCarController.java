package mate.controller.carcontroller;

import java.io.IOException;
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
public class CreateCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("name");
        String manufacturerId = req.getParameter("manufacturer_id");
        if (!model.isEmpty() && !manufacturerId.isEmpty()) {
            Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerId));
            Car car = new Car();
            car.setManufacturer(manufacturer);
            car.setModel(model);
            carService.create(car);
            resp.sendRedirect(req.getContextPath() + "/cars");
        } else {
            resp.sendRedirect(req.getContextPath() + "/cars/add");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/cars/createCar.jsp").forward(req, resp);
    }
}
