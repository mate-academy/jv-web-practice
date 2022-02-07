package mate.controller;

import mate.lib.Injector;
import mate.service.CarService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteCarController extends HttpServlet {
    private static final String ROOT_PACKAGE = "mate";
    private static final String CARS_REQUEST = "/cars";
    private static final String CAR_ID_ATTRIBUTE = "car_id";
    private CarService carService;

    @Override
    public void init() throws ServletException {
        Injector injector = Injector.getInstance(ROOT_PACKAGE);
        carService = (CarService) injector
                .getInstance(CarService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long carId = Long.parseLong(req.getParameter(CAR_ID_ATTRIBUTE));
        carService.delete(carId);
        resp.sendRedirect(getServletContext().getContextPath()
                + CARS_REQUEST);
    }
}
