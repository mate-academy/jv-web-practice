package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet("/cars/delete")
public class CarDeleteController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService;

    public CarDeleteController() {
        carService = (CarService)
                injector.getInstance(CarService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        carService.delete(Long.valueOf(id));
        req.getRequestDispatcher("/WEB-INF/views/success.jsp")
                .forward(req, resp);
    }
}
