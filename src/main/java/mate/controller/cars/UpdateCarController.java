package mate.controller.cars;

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

@WebServlet(urlPatterns = "/cars/update")
public class UpdateCarController extends HttpServlet {
    private static final Injector injector
            = Injector.getInstance("mate");
    private static final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private static final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        req.setAttribute("cars", cars);
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        Long carId = Long.parseLong(req.getParameter("carUpdateId"));
        Car car = carService.get(carId);
        String model = req.getParameter("updateModel");
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(Long
                .parseLong(req.getParameter("manufacturerId"))));
        car.setDrivers(car.getDrivers());
        carService.update(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
