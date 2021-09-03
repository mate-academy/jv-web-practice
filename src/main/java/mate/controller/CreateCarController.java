package mate.controller;

import java.io.IOException;
import java.util.NoSuchElementException;
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

@WebServlet(urlPatterns = "/cars/add")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/createCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturerId"));
        String manufacturerName = req.getParameter("manufacturerName");
        String country = req.getParameter("country");

        if ((manufacturerId == 0) && (manufacturerName.isEmpty() || country.isEmpty())) {
            req.getRequestDispatcher("/WEB-INF/views/createCar.jsp").forward(req, resp);
            return;
        }
        Manufacturer manufacturer = (manufacturerId != 0) ?
                manufacturerService.get(manufacturerId) :
                manufacturerService.create(new Manufacturer(manufacturerName, country));

        carService.create(new Car(model, manufacturer));
        resp.sendRedirect("/cars");
    }
}
