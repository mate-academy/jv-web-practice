package mate.controller.car;

import java.io.IOException;
import java.util.Collections;
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
public class RegistrationCarController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private static final String ADD_CAR_JSP = "/WEB-INF/views/car/addCar.jsp";
    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(ADD_CAR_JSP).forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerID = req.getParameter("manufacturer_id");
        Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerID));
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturer);
        car.setDrivers(Collections.emptyList());
        carService.create(car);
    }
}
