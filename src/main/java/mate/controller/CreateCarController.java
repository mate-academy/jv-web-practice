package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.CarDao;
import mate.dao.ManufacturerDao;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarDao carDao;
    private ManufacturerDao manufacturerDao;

    @Override
    public void init() {
        carDao = (CarDao) injector.getInstance(CarDao.class);
        manufacturerDao = (ManufacturerDao) injector.getInstance(ManufacturerDao.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer_id"));
        car.setManufacturer(manufacturerDao.get(manufacturerId).get());
        List<Driver> drivers = new ArrayList<>();
        car.setDrivers(drivers);
        carDao.create(car);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }
}
