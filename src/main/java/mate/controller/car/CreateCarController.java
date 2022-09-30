package mate.controller.car;

import java.io.IOException;
import java.util.ArrayList;
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
public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private ManufacturerService manufacturerService;
    private CarService carService;

    @Override
    public void init() throws ServletException {
        manufacturerService = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        carService = (CarService) injector.getInstance(CarService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.setAttribute("title", "CREATE / ADD car.");
        req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String model = req.getParameter("model").trim();
        String manufacturerId = req.getParameter("manufacturer").trim();
        if (model.isBlank()
                || model.isEmpty()
                || model.length() < 2
                || manufacturerId.isEmpty()) {
            req.setAttribute("title", "<p style=\"color:red\">enter the correct data</p>");
            req.setAttribute("model", model);
            req.setAttribute("manufacturerId", manufacturerId);
        } else {
            Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerId));
            Car newCar = new Car();
            newCar.setModel(model);
            newCar.setManufacturer(manufacturer);
            newCar.setDrivers(new ArrayList<>());
            Car createdCar = carService.create(newCar);
            Long id = createdCar.getId();
            req.setAttribute("title", "Car ("
                    + "<a href='" + id + "'>" + model + "</a>"
                    + ") has been successfully created,<br> do you want to create another one?");
        }
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/car/create.jsp").forward(req, resp);
    }
}
