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

@WebServlet(urlPatterns = "/cars/register")
public class CarRegistrationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;
    private ManufacturerService manufacturerService;

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/register.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Manufacturer manufacturer = manufacturerService
                .get(Long.valueOf(req.getParameter("manufacturer_id")));
        Car car = new Car(req.getParameter("model"), manufacturer);
        carService.create(car);
        req.getRequestDispatcher("/WEB-INF/views/car/registered.jsp").forward(req,resp);
    }

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class);
        manufacturerService =
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }
}
