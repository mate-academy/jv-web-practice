package mate.controller;

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
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        if (carService.delete(id)) {
            String message = "Cars : " + id + ", deleted successfully!";
            String redirectUrl = req.getContextPath() + "/message-box?referer="
                    + req.getHeader("Referer") + "&msg=" + message;
            resp.sendRedirect(redirectUrl);
        } else {
            req.setAttribute("errorMsg", "Can't delete this car!");
            req.getRequestDispatcher("/WEB-INF/views/cars.jsp").forward(req, resp);
        }
    }
}
