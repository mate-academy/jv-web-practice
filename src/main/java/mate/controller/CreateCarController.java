package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/views/create_driver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp
    )
            throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerId = req.getParameter("manufacturer_id");
        Long id = Long.valueOf(manufacturerId);
        Manufacturer manufacturer = manufacturerService.get(id);
        Car newCar = new Car(model, manufacturer);
        newCar = carService.create(newCar);
        req.setAttribute("id", newCar.getId());
        req.getRequestDispatcher("WEB-INF/views/creating_of_car_is_done.jsp").forward(req, resp);
    }
}
