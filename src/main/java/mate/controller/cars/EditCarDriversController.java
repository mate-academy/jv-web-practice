package mate.controller.cars;

import java.io.IOException;
import java.util.Set;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = {"/cars/edit-drivers"})
@Service
public class EditCarDriversController extends HttpServlet {
    private Injector injector = Injector.getInstance("mate");
    private CarService carService = (CarService) injector.getInstance(CarService.class);
    private DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("carId");
        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can not edit Car with empty carId");
        }

        Car car = carService.get(Long.valueOf(carId));
        Set<Long> selectedDriverIdSet = car.getDrivers().stream()
                .map(Driver::getId)
                .collect(Collectors.toSet());

        req.setAttribute("car", car);
        req.setAttribute("drivers", driverService.getAll());
        req.setAttribute("driverSet", selectedDriverIdSet);
        req.getRequestDispatcher("/WEB-INF/views/cars/editCarDriverList.jsp").forward(req, resp);
    }
}
