package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(name = "addCarWithoutDrivers", urlPatterns = "/cars/add/without/drivers")
public class CreateCarWithoutDriversController extends GenericController {
    private static final String JSP_PATH = "addCarWithoutDrivers.jsp";
    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) INJECTOR.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = initializeCarByRequest(req);
        carService.create(car);
        req.getRequestDispatcher(VIEWS_PATH + JSP_PATH).forward(req, resp);
    }

    private Car initializeCarByRequest(HttpServletRequest req) {
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(
                manufacturerService.get(Long.parseLong(req.getParameter("manufacturer_id"))));
        car.setDrivers(new ArrayList<>());
        return car;
    }
}
