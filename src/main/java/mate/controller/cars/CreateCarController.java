package mate.controller.cars;

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

public class CreateCarController extends HttpServlet {
    private final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private final List<Manufacturer> manufacturers = manufacturerService.getAll();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/create_car.jsp")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer"));
        if (checkManufacturerId(manufacturerId)) {
            Car car = new Car(model, manufacturerService.get(manufacturerId));
            carService.create(car);
            req.setAttribute("model", model);
            req.getRequestDispatcher("/WEB-INF/views/cars/create_car.jsp")
                    .forward(req, resp);
        } else {
            req.setAttribute("error", true);
            req.setAttribute("manufacturerId", manufacturerId);
            req.setAttribute("manufacturers", manufacturers);
            req.getRequestDispatcher("/WEB-INF/views/cars/create_car.jsp")
                    .forward(req, resp);
        }

    }

    private boolean checkManufacturerId(Long id) {
        for (Manufacturer manufacturer: manufacturers) {
            if (id == manufacturer.getId()) {
                return true;
            }
        }
        return false;
    }

}
