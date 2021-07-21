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

@WebServlet(urlPatterns = "/cars/create")
public class CreateCarController extends HttpServlet {
    private static final Injector injectro = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injectro.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injectro.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/create.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String model = req.getParameter("model");
        Manufacturer manufacturer = manufacturerService.get(Long
                .valueOf(req.getParameter("manufacturer_id")));
        carService.create(new Car(model, manufacturer));
        resp.sendRedirect("/cars/create");
    }
}
