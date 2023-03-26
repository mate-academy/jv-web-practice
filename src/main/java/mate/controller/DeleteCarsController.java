package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.service.CarService;

public class DeleteCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carsService = (CarService) injector
            .getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("carsId"));
        carsService.delete(id);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
