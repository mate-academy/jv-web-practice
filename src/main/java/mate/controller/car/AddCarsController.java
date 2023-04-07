package mate.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.CarServiceImpl;
import mate.service.ManufacturerService;
import mate.service.ManufacturerServiceImpl;

@WebServlet("/cars/add")
public class AddCarsController extends HttpServlet {
    //    public static final Injector injector = Injector.getInstance("mate");
    private CarService carService; //todo fix injector
    private ManufacturerService manufacturerService; //todo fix injector

    @Override
    public void init() throws ServletException {
        carService = new CarServiceImpl();
        manufacturerService = new ManufacturerServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Manufacturer> manufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", manufacturers);
        req.getRequestDispatcher("/WEB-INF/views/car/carsAdd.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        final String manufacturerId = req.getParameter("madeBy");
        final Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerId));
        final String model = req.getParameter("model");
        final Car car = new Car();
        car.setManufacturer(manufacturer);
        car.setModel(model);
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/");
    }
}
