package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.CarDaoImpl;
import mate.dao.DriverDaoImpl;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.DriverService;
import mate.service.DriverServiceImpl;

public class AddDriverToCarController extends HttpServlet {
    private CarService carService = new CarServiceImpl(new CarDaoImpl());
    private DriverService driverService = new DriverServiceImpl(new DriverDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> cars = carService.getAll();
        List<Driver> drivers = driverService.getAll();
        req.setAttribute("car", cars);
        req.setAttribute("driver", drivers);
        req.getRequestDispatcher("/WEB-INF/views/addDriverToCar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String idDriver = req.getParameter("id_driver");
        String idCar = req.getParameter("id_car");
        Car car = carService.get(Long.parseLong(idCar));
        Driver driver = driverService.get(Long.parseLong(idDriver));
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/serviceViews/carRegistration.jsp")
                .forward(req, resp);
    }
}
