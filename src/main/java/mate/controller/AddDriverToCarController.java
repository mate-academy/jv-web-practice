package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
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

@WebServlet(urlPatterns = "/cars/addDriver")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long manufacturerId = Long.parseLong(req.getParameter("manufacturer_id"));
        Manufacturer manufacturer = new Manufacturer();
        manufacturer.setId(manufacturerId);
        Long driverId = Long.parseLong(req.getParameter("driver_id"));
        String driverName = req.getParameter("driver_name");
        String licenseNumber = req.getParameter("license_number");
        Driver driver = new Driver();
        driver.setId(driverId);
        driver.setName(driverName);
        driver.setLicenseNumber(licenseNumber);
        Long carId = Long.parseLong(req.getParameter("car_id"));
        String carModel = req.getParameter("model");
        Car car = new Car();
        car.setId(carId);
        car.setModel(carModel);
        car.setManufacturer(manufacturer);
        car.setDrivers(new ArrayList<>());
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/all");
    }
}
