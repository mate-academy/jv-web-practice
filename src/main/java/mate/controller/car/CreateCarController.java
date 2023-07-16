package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        setAttributes(req);
        req.getRequestDispatcher("/WEB-INF/views/cars/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.parseLong(req.getParameter("manufacturer"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerId);
        String model = req.getParameter("model");
        Car car = new Car(manufacturer, model);
        Car newCar = carService.create(car);
        String driverIdInput = req.getParameter("driver");
        if (!driverIdInput.isEmpty()) {
            Driver driver = driverService.get(Long.parseLong(driverIdInput));
            carService.addDriverToCar(driver, newCar);
        }
        setAttributes(req);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }

    private void setAttributes(HttpServletRequest req) {
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.setAttribute("drivers", driverService.getAll());
    }
}
