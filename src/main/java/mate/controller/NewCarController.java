package mate.controller;

import static mate.controller.GetAllDriversController.injector;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class NewCarController extends HttpServlet {
    private ManufacturerService manufacturerService = (ManufacturerService) injector.getInstance(
            ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> allManufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", allManufacturers);
        req.getRequestDispatcher("/WEB-INF/views/cars/new.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        CarService carService = (CarService) injector.getInstance(CarService.class);
        String carModel = req.getParameter("model");
        String manufacturerFromList = req.getParameter("manufacturerFromList");
        Manufacturer manufacturer = manufacturerService.get(Long.parseLong(
                manufacturerFromList.substring(0, manufacturerFromList.indexOf("."))));
        Car car = new Car(carModel, manufacturer);
        carService.create(car);
        resp.sendRedirect("/cars/all");
    }
}
