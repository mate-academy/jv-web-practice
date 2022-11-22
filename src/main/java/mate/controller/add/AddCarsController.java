package mate.controller.add;

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
public class AddCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String CAR_MODEL_NAME = "carModelName";
    private static final String CAR_MANUFACTURER_NAME = "carManufacturerName";
    private static final String CAR_MANUFACTURER_COUNTRY = "carManufacturerCountry";
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addcar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setName(req.getParameter(CAR_MANUFACTURER_NAME));
        manufacturer.setCountry(req.getParameter(CAR_MANUFACTURER_COUNTRY));
        Manufacturer manufacturerFromDB = manufacturerService.create(manufacturer);
        Car car = new Car();
        car.setModel(req.getParameter(CAR_MODEL_NAME));
        car.setManufacturer(manufacturerFromDB);
        car.setDrivers(new ArrayList<>());
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/message/addmessage.jsp")
                .forward(req, resp);
    }
}
