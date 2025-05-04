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

@WebServlet(urlPatterns = "/cars/add")
public class CreateNewCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String ADD = "/WEB-INF/views/cars/add.jsp";
    private CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(ADD).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        Manufacturer manufacturer =
                manufacturerService.get(Long.parseLong(req.getParameter("manufacturer_id")));
        car.setManufacturer(manufacturer);
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
