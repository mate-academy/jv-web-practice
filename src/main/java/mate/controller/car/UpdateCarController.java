package mate.controller.car;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/update")
public class UpdateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private static final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Car car = new Car();
        car.setId(Long.parseLong(req.getParameter("id")));
        car.setModel(req.getParameter("model"));
        Long manufacturerId = req.getParameter("manufacturer.id").equals("")
                ? carService.get(car.getId()).getManufacturer().getId()
                : Long.parseLong(req.getParameter("manufacturer.id"));
        car.setManufacturer(manufacturerService.get(manufacturerId));
        car.setDrivers(carService.get(Long.parseLong(req.getParameter("id"))).getDrivers());
        carService.update(car);
        resp.sendRedirect("/cars");
    }
}
