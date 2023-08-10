package mate.controller.cars;

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
    private static final Injector INJECTOR =
            Injector.getInstance("mate");
    private static final ManufacturerService MANUFACTURER_SERVICE =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);
    private static final CarService CAR_SERVICE = (CarService)
            INJECTOR.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/createCar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(MANUFACTURER_SERVICE
                .get(Long.valueOf(req.getParameter("id"))));
        car.setDrivers(new ArrayList<>());
        CAR_SERVICE.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars/get");
    }
}
