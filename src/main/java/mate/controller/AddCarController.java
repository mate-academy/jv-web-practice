package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private final CarService carService = (CarService) AddDriverController
            .injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) AddDriverController
            .injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("model");
        String manufacturerId = req.getParameter("manufacturerId");
        Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerId));
        Car car = new Car(name, manufacturer);
        carService.create(car);
        resp.getWriter().println("Car was added");
    }
}
