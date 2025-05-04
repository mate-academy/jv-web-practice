package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class CreateCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("manufacturers", manufacturerService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/createCar.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String model = request.getParameter("model");
        Long manufacturerId = Long.parseLong(request.getParameter("manufacturer_id"));
        carService.create(new Car(model, manufacturerService.get(manufacturerId)));
        response.sendRedirect("/index");
    }
}
