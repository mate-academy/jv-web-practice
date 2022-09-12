package mate.controller;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
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
public class AssigningDriverToCar extends HttpServlet {
    private DriverService driverService;
    private CarService carService;
    private List<Car> cars;
    private List<Driver> drivers;

    @Override
    public void init() throws ServletException {
        Injector injector = Injector.getInstance("mate");
        driverService = (DriverService) injector.getInstance(DriverService.class);
        carService = (CarService) injector.getInstance(CarService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        drivers = driverService.getAll();
        cars = carService.getAll();
        req.setAttribute("drivers", drivers);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/assigningDriverToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = cars.stream()
                .filter(c -> Objects.equals(c.getModel(), req.getParameter("car")))
                .findFirst().get();

        Driver driver = drivers.stream()
                .filter(d -> Objects.equals(d.getName(), req.getParameter("driver")))
                .findFirst().get();

        carService.addDriverToCar(driver, car);
        resp.sendRedirect("/index");
    }
}
