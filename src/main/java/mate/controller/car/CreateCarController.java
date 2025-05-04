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
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/new")
public class CreateCarController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");

    private final ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);
    private final CarService carService =
            (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher("/WEB-INF/views/cars/new.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carModel = req.getParameter("model");
        Long carManufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Manufacturer carManufacturer = manufacturerService.get(carManufacturerId);
        Car newCar = new Car();
        newCar.setModel(carModel);
        newCar.setManufacturer(carManufacturer);
        newCar.setDrivers(new ArrayList<>());
        carService.create(newCar);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
