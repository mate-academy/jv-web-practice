package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;
    private ManufacturerService manufacturerService;

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class); 
        manufacturerService = 
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/create.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String carModel = req.getParameter("model");
        Long manufacturerId = Long.parseLong(req.getParameter("manufacturer_id"));
        Car newCar = new Car();
        newCar.setModel(carModel);
        newCar.setManufacturer(manufacturerService.get(manufacturerId));
        newCar.setDrivers(new ArrayList<>());
        System.out.println(carService.create(newCar)); 
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
