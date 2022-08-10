package mate.controller;

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

@WebServlet(urlPatterns = "/cars/registrate")
public class CarRegistrationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/carRegistration.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        carService.create(createCar(req.getParameter("model"),
                Long.valueOf(req.getParameter("manufacturerId"))));
        resp.sendRedirect(req.getContextPath() + "/index");
    }

    private Car createCar(String model, Long manufacturerId) {
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturer);
        return car;
    }
}
