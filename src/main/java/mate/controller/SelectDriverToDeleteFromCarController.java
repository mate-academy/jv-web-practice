package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;

@WebServlet("/cars/drivers/select_to_delete")
public class SelectDriverToDeleteFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Car car = carService.get(carId);
        List<Driver> carDrivers = car.getDrivers();
        req.setAttribute("carId", carId);
        req.setAttribute("drivers", carDrivers);
        req.getRequestDispatcher("/WEB-INF/views/car/deleteDriver.jsp").forward(req, resp);
    }
}
