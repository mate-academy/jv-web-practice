package mate.controller.car;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.service.CarService;
import mate.util.Injector;

@WebServlet(urlPatterns = {"/cars/delete"})
public class DeleteCarController extends HttpServlet {
    private static final String CAR_ID = "car_id";
    private final Injector injector =
            Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter(CAR_ID);

        if (carId == null || carId.length() < 1) {
            throw new RuntimeException("Can't delete car "
                    + "with empty id: " + carId);
        }

        carService.delete(Long.valueOf(carId));
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
