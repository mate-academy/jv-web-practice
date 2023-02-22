package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet(urlPatterns = {"/cars/delete"})
public class DeleteCarController extends HttpServlet {
    private Injector injector = Injector.getInstance("mate");
    private CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("carId");
        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can not delete Car with empty id");
        }

        carService.delete(Long.valueOf(carId));
        resp.sendRedirect("/cars");
    }
}
