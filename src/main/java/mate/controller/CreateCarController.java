package mate.controller;

import mate.dao.CarDao;
import mate.dao.CarDaoImpl;
import mate.dao.ManufacturerDao;
import mate.dao.ManufacturerDaoImpl;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final CarDao carDao = new CarDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String model = req.getParameter("carModel");
        String manufacturer = req.getParameter("carManufacturer");
        Car newCar = toCar(model, manufacturer);
        if (carDao.isNotExist(newCar)) {
            carService.create(newCar);
        } else {
            carService.update(newCar);
        }
    }

    private Car toCar(String carModel, String CarManufacturer) {
        ManufacturerDao manufacturerDao = new ManufacturerDaoImpl();
        return new Car(carModel, manufacturerDao.getManufacturerByName(CarManufacturer));
    }
}
