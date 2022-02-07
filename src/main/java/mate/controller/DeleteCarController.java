package mate.controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

public class DeleteCarController extends HttpServlet {
    private static final String ROOT_PACKAGE = "mate";
    private static final String CARS_REQUEST = "/cars";
    private static final String CAR_ID_ATTRIBUTE = "car_id";
    private CarService carService;

    @Override
    public void init() {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        carService = (CarService) injector
                .getInstance(CarService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        long carId = Long.parseLong(req.getParameter(CAR_ID_ATTRIBUTE));
        carService.delete(carId);
        resp.sendRedirect(getServletContext().getContextPath()
                + CARS_REQUEST);
    }
}
