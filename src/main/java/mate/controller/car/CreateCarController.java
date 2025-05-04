package mate.controller.car;

import java.io.IOException;
import java.util.Collections;
import java.util.Optional;
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
    private static final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        Optional<Manufacturer> manufacturer =
                manufacturerService.findManufacturer(manufacturerId);
        if (manufacturer.isEmpty()) {
            req.setAttribute("id", Long.valueOf(req.getParameter("manufacturer_id")));
            req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
            return;
        }
        carService.create(new Car(req.getParameter("model"),
                manufacturer.get(),
                Collections.emptyList()));
        req.getRequestDispatcher("/WEB-INF/views/info/saved.jsp").forward(req, resp);
    }
}
