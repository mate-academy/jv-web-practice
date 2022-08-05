package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private final ManufacturerService manufacturerService;
    private final CarService carService;

    {
        Injector injector = Injector.getInstance("mate");
        manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        carService = (CarService) injector.getInstance(CarService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/createCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("manufacturerId"));
        Manufacturer manufacturer = manufacturerService.get(id);
        String model = req.getParameter("model");
        Car car = new Car(model, manufacturer);
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/done.jsp").forward(req, resp);
    }
}
