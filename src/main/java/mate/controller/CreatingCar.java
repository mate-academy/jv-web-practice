package mate.controller;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.ManufacturerService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/car/create")
public class CreatingCar extends HttpServlet {
    private final static Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService)
            injector.getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Manufacturer> manufacturerList = manufacturerService.getAll();
        req.setAttribute("manufacturerList", manufacturerList);
        req.getRequestDispatcher("/WEB-INF/views/car/createCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long manufacturerID = Long.valueOf(req.getParameter("manufacturerId"));
        Manufacturer manufacturer = manufacturerService.get(manufacturerID);
        String model = req.getParameter("model");
        Car car = new Car(model, manufacturer);
        carService.create(car);
        resp.sendRedirect("");
    }
}
