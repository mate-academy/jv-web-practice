package mate.controller.car;

import java.io.IOException;
import java.util.ArrayList;
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

@WebServlet("/cars/add")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService
            = (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        String manufacturerId = req.getParameter("manufacturerId");
        if (model != null && manufacturerId != null
                && !model.equals("") && !manufacturerId.equals("")) {
            Car car = new Car();
            car.setModel(model);
            Manufacturer manufacturer
                    = manufacturerService.get(Long.valueOf(manufacturerId));
            car.setManufacturer(manufacturer);
            car.setDrivers(new ArrayList<>());
            carService.create(car);
            resp.sendRedirect(req.getContextPath() + "/cars");
        } else {
            req.setAttribute("errorMsg", "Invalid data!");
            req.getRequestDispatcher("/WEB-INF/views/cars.jsp").forward(req, resp);
        }
    }
}
