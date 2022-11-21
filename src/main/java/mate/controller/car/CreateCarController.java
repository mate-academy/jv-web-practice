package mate.controller.car;

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

@WebServlet("/cars/add")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/register/carRegister.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        long manufactureId = Long.parseLong(req.getParameter("manufacture_id"));
        Manufacturer manufacturer = manufacturerService.get(manufactureId);
        Car car = new Car();
        List<Driver> driverList = new ArrayList<>();
        car.setModel(model);
        car.setManufacturer(manufacturer);
        car.setDrivers(driverList);
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/congratulations/carRegisterSuccess.jsp")
                .forward(req, resp);
    }
}
