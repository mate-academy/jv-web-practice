package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class RegisterCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/register.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getParameter("model").isEmpty() || req.getParameter("manufacturer").isEmpty()) {
            throw new RuntimeException("Can't create new car");
        }
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturerService
                .get(Long.valueOf(req.getParameter("manufacturer"))));
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
