package mate.controller;

import mate.dao.CarDao;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DisplayAllCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarDao dao = (CarDao) injector.getInstance(CarDao.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        List<Manufacturer> manufacturers = new ArrayList<>();
        List<Driver> drivers = null;
        for (Car car : cars) {
            manufacturers.add(car.getManufacturer());
            drivers = car.getDrivers();
        }
        req.setAttribute("drivers", drivers);
        req.setAttribute("manufacturers", manufacturers);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/displayAllCars.jsp").forward(req, resp);
    }
}
