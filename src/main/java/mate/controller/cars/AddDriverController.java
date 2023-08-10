package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/cars/add")
public class AddDriverController extends HttpServlet {
    private static final Injector INJECTOR =
            Injector.getInstance("mate");
    private static final DriverService DRIVER_SERVICE =
            (DriverService) INJECTOR.getInstance(DriverService.class);

    private static final CarService CAR_SERVICE =
            (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriverToCar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        Driver driver = DRIVER_SERVICE.get(Long.valueOf(req.getParameter("driver_id")));
        Car car = CAR_SERVICE.get(Long.valueOf(req.getParameter("car_id")));
        CAR_SERVICE.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/get");
    }
}
