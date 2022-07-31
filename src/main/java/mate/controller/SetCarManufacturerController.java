package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class SetCarManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allmanufacturers = manufacturerService.getAll();
        Car car;
        try {
            car = carService.get(Long.valueOf(req.getParameter("car_id")));
        } catch (RuntimeException e) {
            car = new Car();
        }

        req.setAttribute("car",car);
        req.setAttribute("manufacturers",allmanufacturers);
        req.getRequestDispatcher("/WEB-INF/views/setmanufacturer.jsp").forward(req, resp);
    }

}
