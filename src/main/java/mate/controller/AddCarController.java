package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.CarDaoImpl;
import mate.dao.ManufacturerDaoImpl;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

public class AddCarController extends HttpServlet {
    private ManufacturerService manufacturerService =
            new ManufacturerServiceImpl(new ManufacturerDaoImpl());
    private CarService carService = new CarServiceImpl(new CarDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> all = manufacturerService.getAll();
        req.setAttribute("allManufacturer", all);
        req.getRequestDispatcher("/WEB-INF/views/addCarViews.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = null;

        String model1 = req.getParameter("model_1");
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        String id = req.getParameter("id");
        String model2 = req.getParameter("model_2");
        if (!id.isEmpty() && !model2.isEmpty()) {
            car = new Car();
            Manufacturer manufacturer = manufacturerService.get(Long.parseLong(id));
            car.setModel(model2);
            car.setManufacturer(manufacturer);
            car.setDrivers(List.of());
            carService.create(car);
            req.getRequestDispatcher("/WEB-INF/views/serviceViews/carRegistration.jsp")
                    .forward(req, resp);
        }
        if (!model1.isEmpty() && !name.isEmpty() && !country.isEmpty()) {
            car = new Car();
            Manufacturer manufacturer = new Manufacturer();
            manufacturer.setName(name);
            manufacturer.setCountry(country);
            car.setModel(model1);
            Manufacturer manufacturer1 = manufacturerService.create(manufacturer);
            car.setManufacturer(manufacturer1);
            car.setDrivers(List.of());
            carService.create(car);
            req.getRequestDispatcher("/WEB-INF/views/serviceViews/carRegistration.jsp")
                    .forward(req, resp);
        }
    }
}
