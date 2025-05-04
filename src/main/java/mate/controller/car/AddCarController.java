package mate.controller.car;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private static final String PAGE_TITLE = "add a car";
    private static final String PAGE_HEADER = "Add a new car to list";
    private static final String PAGE_DIRECTORY = "/WEB-INF/views/cars/add.jsp";
    private static final String REDIRECT_LOCATION = "/cars";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();

        req.setAttribute("page_title", PAGE_TITLE);
        req.setAttribute("page_header", PAGE_HEADER);
        req.setAttribute("manufacturers", manufacturers);

        req.getRequestDispatcher(PAGE_DIRECTORY).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        String model = req.getParameter("model");
        Long manufacturerId = Long.valueOf(req.getParameter("manufacturer"));

        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        List<Driver> drivers = Collections.emptyList();
        Car car = new Car();
        car.setModel(model);
        car.setManufacturer(manufacturer);
        car.setDrivers(drivers);
        carService.create(car);

        resp.sendRedirect(req.getContextPath() + REDIRECT_LOCATION);
    }
}
