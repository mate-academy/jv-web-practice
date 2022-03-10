package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.ManufacturerService;

public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static CarService carService;
    private static ManufacturerService manufacturerService;

    @Override
    public void init() {
        carService =
                (CarService) injector.getInstance(CarService.class);
        manufacturerService =
                (ManufacturerService) injector.getInstance(ManufacturerService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/car/addCar.jsp")
                .forward(req, resp);
    }

    @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp)
                throws IOException {
        carService.create(new Car(
                req.getParameter("model"),
                manufacturerService.get(
                        Long.valueOf(req.getParameter("manufacturer_id"))),
                new ArrayList<>())
        );
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
