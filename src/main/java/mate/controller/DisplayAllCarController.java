package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.CarDaoImpl;
import mate.model.Car;
import mate.service.CarService;
import mate.service.CarServiceImpl;

public class DisplayAllCarController extends HttpServlet {
    private CarService carService = new CarServiceImpl(new CarDaoImpl());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> all = carService.getAll();
        req.setAttribute("car",all);
        req.getRequestDispatcher("/WEB-INF/views/displayAllCar.jsp")
                .forward(req, resp);

    }
}
