package mate.controller;

import java.io.IOException;
import java.util.List;
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

@WebServlet(urlPatterns = "/cars/create")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher("/WEB-INF/views/cars/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getParameter("manufacturerId").equals("")) {
            String name = req.getParameter("name");
            String country = req.getParameter("country");
            Manufacturer manufacturer = new Manufacturer(name, country);
            String model = req.getParameter("model");
            Car car = new Car(model, manufacturer);
            carService.create(car);
        } else {
            String model = req.getParameter("model");
            Long manufacturerId = Long.valueOf(req.getParameter("manufacturerId"));
            Manufacturer manufacturer = manufacturerService.get(manufacturerId);
            Car car = new Car(model, manufacturer);
            carService.create(car);
        }
        resp.sendRedirect("/index");
    }
}
