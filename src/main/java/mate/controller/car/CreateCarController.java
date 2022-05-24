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
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/create")
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/cars/create.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        Car car = new Car();
        String model = request.getParameter("model");
        String manufacturerId = request.getParameter("manufacturerId");
        car.setModel(model);
        car.setManufacturer(manufacturerService.get(Long.parseLong(manufacturerId)));
        car.setDrivers(new ArrayList<>());
        carService.create(car);
        response.sendRedirect(request.getContextPath() + "/cars/create");
    }
}
