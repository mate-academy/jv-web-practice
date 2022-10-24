package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

public class GetAllDriversByCarController extends HttpServlet {
    private static final Injector injector =
            Injector.getInstance("mate");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("id"));
        Car car = carService.get(carId);
        req.setAttribute("drivers", car.getDrivers());
        req.setAttribute("carId", carId);
        req.setAttribute("model", car.getModel());
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/drivers.jsp")
                .forward(req, resp);
    }
}
