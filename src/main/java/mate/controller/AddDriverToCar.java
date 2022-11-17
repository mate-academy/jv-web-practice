package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.exception.DataProcessingException;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCar extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/addDriverToCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carName = req.getParameter("model").toLowerCase();
        String licenceNumber = req.getParameter("licence number");
        CarService carService = (CarService) injector.getInstance(CarService.class);
        Car car = carService.getAll()
                .stream()
                .filter(f -> f.getModel().equals(carName))
                .findFirst()
                .orElseThrow(() -> new DataProcessingException("can not find current car"));
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        Driver driver = driverService.getAll()
                .stream()
                .filter(f -> f.getLicenseNumber().equals(licenceNumber))
                .findFirst()
                .orElseThrow(
                        () -> new DataProcessingException("can not find driver by licence number"
                        + licenceNumber));
        carService.addDriverToCar(driver, car);
        req.getRequestDispatcher("/WEB-INF/views/success.jsp").forward(req, resp);
    }
}
