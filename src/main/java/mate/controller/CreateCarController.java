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

@WebServlet(urlPatterns = {"/cars/add"})
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private boolean successRefresh = false;
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", allManufacturers);
        if (!successRefresh) {
            req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").include(req, resp);
            req.getRequestDispatcher("/WEB-INF/views/service/success.jsp").include(req, resp);
            successRefresh = false;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturerId"));
        String model = req.getParameter("carModel");
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        Car car = new Car(model, manufacturer);
        carService.create(car);
        successRefresh = true;
        resp.sendRedirect("/cars/add");
    }
}
