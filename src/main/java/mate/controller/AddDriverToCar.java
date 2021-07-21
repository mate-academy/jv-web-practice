package mate.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;
import mate.service.DriverService;

@WebServlet(urlPatterns ="/cars/addDriverToCar")
public class AddDriverToCar extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final CarService carService = (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("carId",req.getParameter("id"));
        req.getRequestDispatcher("/WEB-INF/views/addDriverToCar.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("driverId"));
        carService.addDriverToCar(driverService.get(id), carService.get(Long.valueOf(req.getParameter("carId"))));
        List<Car> carList = carService.getAll();
        req.setAttribute("cars",carList);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").include(req,resp);
        req.getRequestDispatcher("/WEB-INF/views/allCars.jsp").include(req,resp);
        req.getRequestDispatcher("/WEB-INF/views/operationSuccessful.jsp").include(req,resp);
    }
}
