package mate.controller.carControllers;

import mate.lib.Injector;

import mate.service.CarService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cars/delete")
public class CarDeleteController extends HttpServlet {
    Injector injector = Injector.getInstance("mate");
    CarService carService;

    public CarDeleteController() {
        carService = (CarService)
                injector.getInstance(CarService.class);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        carService.delete(Long.valueOf(id));
        req.getRequestDispatcher("/WEB-INF/views/success.jsc")
                .forward(req, resp);
    }
}
