package mate.controller;

import mate.lib.Injector;
import mate.service.CarService;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/drivers/addtocar")
public class AddDriverToCarController extends HttpServlet {
        private static final Injector injector = Injector.getInstance("mate");
        private static final DriverService driverSevice =
                (DriverService) injector.getInstance(DriverService.class);
        private static final CarService carService =
                (CarService) injector.getInstance(CarService.class);

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {
               req.getRequestDispatcher("/WEB-INF/views/driver/addDriverToCar.jsp").forward(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {
                Long carId = Long.parseLong(req.getParameter("car_id"));
                System.out.println(carId);
                Long driverId = Long.parseLong(req.getParameter("driver_id"));
                System.out.println(driverId);
                carService.addDriverToCar(driverSevice.get(driverId), carService.get(carId));
                resp.sendRedirect("/");
        }
}
