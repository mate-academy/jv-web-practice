package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;

@WebServlet(urlPatterns = "/cars/add")
public class AddCarController extends HttpServlet {
    private static final String PAGE_PATH = "/WEB-INF/views/car/add.jsp";
    private static final String REDIRECT_PAGE_PATH = "/WEB-INF/views/index.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;
    private ManufacturerService manufacturerService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(PAGE_PATH).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model");
        Long id = Long.valueOf(req.getParameter("manufacturer_id"));
        Manufacturer manufacturer = manufacturerService.get(id);
        Car car = new Car(model, manufacturer);
        carService.create(car);
        req.getRequestDispatcher(REDIRECT_PAGE_PATH).forward(req, resp);
    }

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class);
        manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }
}
