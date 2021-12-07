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

@WebServlet(urlPatterns = "/cars/create")
public class CreateCarController extends HttpServlet {
    private static Injector injector = Injector.getInstance("mate");
    private static ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);
    private static CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carModel = req.getParameter("model");
        String makerId = req.getParameter("maker_id");
        long manufacturerId = Long.parseLong(req.getParameter("maker_id"));
        Manufacturer maker = manufacturerService.get(manufacturerId);
        Car car = new Car(carModel,maker);
        carService.create(car);
        resp.sendRedirect("/index");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car_create.jsp").forward(req, resp);
    }
}
