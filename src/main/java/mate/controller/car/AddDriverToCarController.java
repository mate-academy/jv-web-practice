package mate.controller.car;

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

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("mate");
    private static final String ADD_Driver_TO_CAR_JSP = "/WEB-INF/views/car/addDriverToCar.jsp";
    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) INJECTOR.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(ADD_Driver_TO_CAR_JSP).forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carID = Long.valueOf(req.getParameter("car_id"));
        Long driverID = Long.valueOf(req.getParameter("driver_id"));
        Car car = carService.get(carID);
        Driver driver = driverService.get(driverID);
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
