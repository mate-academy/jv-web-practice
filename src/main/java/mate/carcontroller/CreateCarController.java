package mate.carcontroller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.exception.DataProcessingException;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;

public class CreateCarController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/carsJsp/create_car.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String model = req.getParameter("model");
            Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));

            Manufacturer manufacturer = new Manufacturer();
            manufacturer.setId(manufacturerId);
            Car car = new Car();
            List<Driver> driverList = new ArrayList<>();
            car.setModel(model);
            car.setManufacturer(manufacturer);
            car.setDrivers(driverList);
            carService.create(car);
            resp.sendRedirect(req.getContextPath() + "/success");
        } catch (DataProcessingException e) {
            resp.sendRedirect(req.getContextPath() + "/error");
        }
    }
}
