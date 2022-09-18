package mate.controller.car;

import java.io.IOException;
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

@WebServlet(urlPatterns = "/cars/*")
public class GetCarByIdController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getPathInfo().split("/")[1];
        Car car = carService.get(Long.valueOf(id));
        req.setAttribute("title", "ONE Car!");
        String model = car.getModel();
        Manufacturer manufacturer = car.getManufacturer();
        List<Driver> drivers = car.getDrivers();
        req.setAttribute("id", id);
        req.setAttribute("model", model);
        req.setAttribute("manufacturer", manufacturer);
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/car.jsp").forward(req, resp);
    }
}
