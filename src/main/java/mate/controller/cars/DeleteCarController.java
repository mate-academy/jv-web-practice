package mate.controller.cars;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/delete")
public class DeleteCarController extends HttpServlet {
    private static final Injector INJECTOR =
            Injector.getInstance("mate");
    private static final CarService CAR_SERVICE =
            (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        CAR_SERVICE.delete(Long.valueOf(req.getParameter("id")));
        resp.sendRedirect(req.getContextPath() + "/cars/get");
    }
}
