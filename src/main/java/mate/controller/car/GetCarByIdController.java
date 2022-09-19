package mate.controller.car;

import java.io.IOException;
import java.util.Collection;
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

@WebServlet(urlPatterns = "/cars/*")
public class GetCarByIdController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private Collection<Manufacturer> allManufacturers = null;
    private List<Driver> drivers = null;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        allManufacturers = manufacturerService.getAll();
        req.setAttribute("manufacturers", allManufacturers);

        String id = req.getPathInfo().split("/")[1];
        Car car = carService.get(Long.valueOf(id));
        String model = car.getModel();
        drivers = car.getDrivers();
        req.setAttribute("id", id);
        req.setAttribute("model", model);
        Manufacturer manufacturer = car.getManufacturer();
        req.setAttribute("manufacturer", manufacturer);
        req.setAttribute("manufacturerId", manufacturer.getId());
        req.setAttribute("drivers", drivers);
        req.getRequestDispatcher("/WEB-INF/views/car/edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getPathInfo().split("/")[1];
        String model = req.getParameter("model").trim();
        String manufacturerId = req.getParameter("manufacturer").trim();

        if (model.isBlank()
                || model.isEmpty()
                || model.length() < 2) {

            req.setAttribute("title", "<p style=\"color:red\">enter the correct data</p>");

        } else {

            Manufacturer manufacturer = manufacturerService.get(Long.valueOf(manufacturerId));

            Car newCar = new Car();
            newCar.setId(Long.valueOf(id));
            newCar.setModel(model);
            newCar.setDrivers(drivers);
            newCar.setManufacturer(manufacturer);

            carService.update(newCar);

            req.setAttribute("id", id);
            req.setAttribute("manufacturer", manufacturer);
            req.setAttribute("manufacturerId", manufacturer.getId());
            req.setAttribute("drivers", drivers);
            req.setAttribute("title", "Car ("
                    + manufacturer.getName() + "/" + model
                    + ") has been successfully updated");
        }

        req.setAttribute("model", model);
        req.setAttribute("manufacturers", allManufacturers);

        req.getRequestDispatcher("/WEB-INF/views/car/edit.jsp").forward(req, resp);
    }
}
