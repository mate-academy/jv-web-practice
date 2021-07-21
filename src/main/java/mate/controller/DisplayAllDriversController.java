package mate.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;
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

@WebServlet(urlPatterns = "/cars/drivers/")
public class DisplayAllDriversController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> driverList = driverService.getAll();
        HashMap<Driver,String> driversCarsId = new HashMap<>();
        driverList.forEach(driver ->
                driversCarsId.put(driver,
                        carService.getAllByDriver(driver.getId())
                                .stream()
                                .map(Car::getId)
                                .map(String::valueOf)
                                .collect(Collectors.joining("|"))));
        req.setAttribute("drivers",driversCarsId);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").include(req, resp);
        req.getRequestDispatcher("/WEB-INF/views/allDrivers.jsp").include(req,resp);

    }
}
