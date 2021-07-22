package mate.controller;

import java.io.IOException;
import java.util.List;
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
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService = (CarService) injector
            .getInstance(CarService.class);
    private static final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("driverId"));
        Driver driver = driverService.get(id);
        Long carId = Long.valueOf(req.getParameter("carId"));
        Car car = carService.get(carId);
        carService.addDriverToCar(driver,car);
        List<Car> carList = carService.getAll();
        req.setAttribute("cars", carList);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").include(req, resp);
        req.getRequestDispatcher("/WEB-INF/views/allCars.jsp").include(req, resp);
        req.getRequestDispatcher("/WEB-INF/views/operationSuccessful.jsp").include(req, resp);
    }
}
