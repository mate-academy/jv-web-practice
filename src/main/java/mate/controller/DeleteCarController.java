package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;
import mate.service.CarServiceImpl;

public class DeleteCarController extends HttpServlet {
    public static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarServiceImpl) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        carService.delete(Long.valueOf(req.getParameter("carId")));
        req.getRequestDispatcher("/WEB-INF/views/delete/car.jsp");
    }
}
