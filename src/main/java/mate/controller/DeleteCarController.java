package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.CarDaoImpl;
import mate.service.CarService;
import mate.service.CarServiceImpl;

public class DeleteCarController extends HttpServlet {
    private CarService carService = new CarServiceImpl(new CarDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String id = req.getParameter("id");
        carService.delete(Long.parseLong(id));
        req.getRequestDispatcher("/WEB-INF/views/serviceViews/carRegistration.jsp")
                .forward(req, resp);
    }
}
